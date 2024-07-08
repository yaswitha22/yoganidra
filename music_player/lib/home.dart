import 'package:flutter/material.dart';
import 'package:music_player/login.dart';
import 'dart:math';
import 'audio.dart';

void main() {
  runApp(MaterialApp(
    home: NewHome(),
  ));
}

class NewHome extends StatefulWidget {
  const NewHome({Key? key}) : super(key: key);

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Bubble> bubbles;
  List<bool> stageCompletion = [true, false, false, false, false, false, false, false]; // Track completion state of stages

  // Define stage names as a class-level variable
  List<String> stageNames = [
    'Stage A',
    'Stage B',
    'Stage C',
    'Stage D',
    'Stage E',
    'Stage F',
    'Stage G',
    'Stage H',
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
    bubbles = List.generate(50, (index) => Bubble());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _navigateToStagePage(BuildContext context, String stageName) {
    int index = stageNames.indexOf(stageName);
    if (index == 0 || stageCompletion[index - 1]) { // Navigate only if it's the first stage or the previous stage is completed
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StagePage(
            stageName: stageName,
            onComplete: () {
              setState(() {
                stageCompletion[index] = true; // Mark the current stage as completed
                if (index < stageNames.length - 1) {
                  stageCompletion[index + 1] = true; // Unlock the next stage
                }
              });
            },
          ),
        ),
      );
    } else {
      // Show a message or do nothing when stage is locked
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Stage $stageName is locked. Complete previous stages to unlock.'),
        ),
      );
    }
  }

  void _navigateToAudioPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AudioListScreen()),
    );
  }

  @override  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          shadowColor: Colors.yellow,
          title: Center(
            child: Text(
              "STAGES",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          actions: [IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
          }, icon: Icon(Icons.logout_outlined))],
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two items per row
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: stageNames.length,
            itemBuilder: (context, index) {
              String stageName = stageNames[index];
              bool isLocked = !stageCompletion[index];
              return GestureDetector(
                onTap: () {
                  if (!isLocked) {
                    // Navigate to audio.dart page
                    _navigateToAudioPage(context);
                  } else {
                    // Show a message or do nothing when stage is locked
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Stage $stageName is locked. Complete previous stages to unlock.'),
                      ),
                    );
                  }
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: isLocked ? Colors.grey : Colors.transparent, // Locked color
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          stageName,
                          style: TextStyle(
                            color: isLocked ? Colors.white54 : Colors.white, // Locked text color
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          ...bubbles.map((bubble) => AnimatedBubble(
            controller: _controller,
            bubble: bubble,
          )),
        ],
      ),
    );
  }
}

class Bubble {
  late double x;
  late double y;
  late double size;

  Bubble() {
    final random = Random();
    x = random.nextDouble();
    y = random.nextDouble();
    size = 5.0 + random.nextDouble() * 10.0;
  }
}

class AnimatedBubble extends StatelessWidget {
  final AnimationController controller;
  final Bubble bubble;

  AnimatedBubble({required this.controller, required this.bubble});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        bubble.y -= 0.001;
        if (bubble.y < 0) {
          bubble.y = 1.0;
        }
        return Positioned(
          left: bubble.x * MediaQuery.of(context).size.width,
          top: bubble.y * MediaQuery.of(context).size.height,
          child: Opacity(
            opacity: 0.5,
            child: Container(
              width: bubble.size,
              height: bubble.size,
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      },
    );
  }
}

class StagePage extends StatelessWidget {
  final String stageName;
  final VoidCallback onComplete;

  const StagePage({Key? key, required this.stageName, required this.onComplete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(stageName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to $stageName!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                onComplete(); // Mark the current stage as completed
                Navigator.pop(context); // Go back to previous screen after completing stage
              },
              child: Text('Complete Stage'),
            ),
          ],
        ),
      ),
    );
  }
}
