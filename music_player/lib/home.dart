import 'package:flutter/material.dart';
import 'package:music_player/login.dart';
import 'dart:math';
import 'audio.dart';

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

  void _navigateToAudioPage(BuildContext context, int stageIndex) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AudioListScreen(
          onCompleteStage: () {
            setState(() {
              if (stageIndex < stageCompletion.length - 1) {
                stageCompletion[stageIndex + 1] = true;
              }
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          automaticallyImplyLeading: false, // Disable the back arrow
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
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              icon: Icon(Icons.logout_outlined),
            ),
          ],
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
                    _navigateToAudioPage(context, index);
                  } else {
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
  late double dx;
  late double dy;

  Bubble() {
    final random = Random();
    x = random.nextDouble();
    y = random.nextDouble();
    size = 2.0 + random.nextDouble() * 10.0;
    dx = (random.nextDouble() - 0.5) * 0.01; // horizontal velocity
    dy = (random.nextDouble() - 0.5) * 0.01; // vertical velocity
  }

  void move() {
    x += dx;
    y += dy;
    // Wrap around the screen edges
    if (x < 0) x = 1.0;
    if (x > 1.0) x = 0.0;
    if (y < 0) y = 1.0;
    if (y > 1.0) y = 0.0;
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
        bubble.move(); // Update the bubble's position

        return Positioned(
          left: bubble.x * MediaQuery.of(context).size.width,
          top: bubble.y * MediaQuery.of(context).size.height,
          child: Container(
            width: bubble.size,
            height: bubble.size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow,
            ),
          ),
        );
      },
    );
  }
}
