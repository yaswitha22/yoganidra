import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:music_player/firebase_options.dart';
import 'package:music_player/home.dart';
import 'package:music_player/login.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:provider/provider.dart';
import 'music.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => AudioPlayerModel()),
          ],
          child:MyApp()
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SlideAnimationExample(),
    );
  }
}

class SlideAnimationExample extends StatefulWidget {
  @override
  _SlideAnimationExampleState createState() => _SlideAnimationExampleState();
}

class _SlideAnimationExampleState extends State<SlideAnimationExample> {
  final PageController _pageController = PageController();
  late Timer _timer;
  int _currentPage = 0;
  final List<Map<String, dynamic>> _pages = [
    {
      'imageUrl': 'https://www.infinumgrowth.com/wp-content/uploads/2020/06/Yoganidra.jpg',
      'description': 'Explore the tranquility of Yoga',
    },
    {
      'imageUrl': 'https://img.freepik.com/premium-vector/vector-design-music-player-icon-style_822882-127142.jpg?w=740',
      'description': 'Discover scenic landscapes',
    },
    {
      'imageUrl': 'https://img.freepik.com/free-vector/chakras-concept_23-2148568321.jpg?t=st=1720255185~exp=1720258785~hmac=4c1136b8be749083ff1bd02e50bfa3afb49b74279601acfc69bca5a1eb371374&w=740',
      'description': 'Experience the wonders of nature',
    },
  ];
  final Shader _linearGradient = const LinearGradient(
    colors: [Colors.yellow, Colors.deepPurple],
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 320.0, 80.0));

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < _pages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: List.generate(_pages.length, (index) {
          return buildPage(
            imageUrl: _pages[index]['imageUrl'],
            description: _pages[index]['description'],
          );
        }),
      ),
    );
  }

  Widget buildPage({required String imageUrl, required String description}) {
    return GestureDetector(
      onVerticalDragEnd: (details) {
        if (details.primaryVelocity! < 0) {
          // Swiped up
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        }
      },
      child: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.blue.withOpacity(0.4),
                      Colors.transparent,
                    ],
                    stops: [0.5, 1.0],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40, // Adjust top position as needed
              left: 0,
              right: 0,
              child: Center(
                child: CupertinoTheme(
                  data: CupertinoThemeData(
                    brightness: Brightness.dark,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Text(
                        'Yoga Nidra',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()..shader = _linearGradient,
                          letterSpacing: 2.0,
                          shadows: [
                            Shadow(
                              blurRadius: 3.0,
                              color: Colors.black.withOpacity(0.5),
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 350,
                    child: ClipOval(
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    description,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 20,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Swipe up to login',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ..._buildStars(context, imageUrl),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildStars(BuildContext context, String imageUrl) {
    final List<Widget> stars = [];
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final random = Random();

    // Position stars randomly across the screen, avoiding image area
    for (int i = 0; i < 20; i++) {
      double starSize = random.nextInt(10).toDouble() + 5;
      double starLeft = random.nextDouble() * screenWidth;
      double starTop = random.nextDouble() * screenHeight;

      // Check if the star overlaps with the image
      if (imageUrl.isNotEmpty) {
        final imageWidth = 350.0;
        final imageHeight = 350.0;
        final imageLeft = (screenWidth - imageWidth) / 2;
        final imageTop = (screenHeight - imageHeight) / 2;

        // Adjust star position if it overlaps with the image
        if (starLeft >= imageLeft &&
            starLeft <= imageLeft + imageWidth &&
            starTop >= imageTop &&
            starTop <= imageTop + imageHeight) {
          starLeft = random.nextDouble() * screenWidth;
          starTop = random.nextDouble() * screenHeight;
        }
      }

      stars.add(
        Positioned(
          left: starLeft,
          top: starTop,
          child: Icon(
            Icons.star,
            color: Colors.yellow,
            size: starSize,
          ),
        ),
      );
    }

    return stars;
  }
}
final List<Pair> playlist = [
  Pair('assets/audio2.mp3', false),
  Pair('assets/audio3.mp3', false)
];

class Pair {
  String str;
  bool vis;
  Pair(this.str,this.vis);
}