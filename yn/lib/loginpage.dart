import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Signuppage.dart';
import 'dart:ui';
import 'dart:math';
import 'home.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final key = GlobalKey<FormState>();
  final email = TextEditingController();
  final pass = TextEditingController();
  List<Map<String, dynamic>> stars = [];
  final Random random = Random();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final Size screenSize = MediaQuery.of(context).size;
      setState(() {
        stars = generateStars(screenSize);
      });
    });
  }

  Future login(String email, String pass) async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      auth.signInWithEmailAndPassword(email: email, password: pass).then((value) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => NewHome()));
      }).onError((error, stackTrace) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Not registered?"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signuppage()));
                },
                child: Text("Signup"),
              )
            ],
          ),
        );
      });
    } catch (err) {
      throw Exception(err);
    }
  }

  Future forgotPass(String email) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    try {
      await auth.sendPasswordResetEmail(email: email).then((value) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Email sent successfully"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok"),
              )
            ],
          ),
        );
      }).onError((error, stackTrace) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Not registered?"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signuppage()));
                },
                child: Text("Signup"),
              )
            ],
          ),
        );
      });
    } catch (err) {
      throw Exception(err);
    }
  }

  final Shader _linearGradient = const LinearGradient(
    colors: [Colors.yellow, Colors.white],
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 320.0, 80.0));

  List<Map<String, dynamic>> generateStars(Size size) {
    final List<Map<String, dynamic>> stars = [];
    final double iconSize = 100.0; // Size of the person icon
    final double formWidth = 300.0; // Width of the form fields

    // Define areas to avoid
    Rect iconArea = Rect.fromLTWH((size.width - iconSize) / 2, 100, iconSize, iconSize);
    Rect emailFieldArea = Rect.fromLTWH((size.width - formWidth) / 2, 380, formWidth, 60);
    Rect passFieldArea = Rect.fromLTWH((size.width - formWidth) / 2, 460, formWidth, 60);
    Rect buttonArea = Rect.fromLTWH((size.width - 150) / 2, 560, 150, 50);

    for (int i = 0; i < 30; i++) {
      double starSize = random.nextDouble() * 10 + 5; // Adjusted to smaller sizes
      Offset starOffset = Offset(random.nextDouble() * size.width, random.nextDouble() * size.height);

      // Check if star overlaps with any of the areas to avoid
      if (!iconArea.contains(starOffset) &&
          !emailFieldArea.contains(starOffset) &&
          !passFieldArea.contains(starOffset) &&
          !buttonArea.contains(starOffset)) {
        stars.add({
          'size': starSize,
          'offset': starOffset,
        });
      }
    }
    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background stars
          ...stars.map((star) => Star(size: star['size'], offset: star['offset'])).toList(),
          // Login form
          Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = _linearGradient,
                    ),
                  ),
                  SizedBox(height: 60),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: email,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white),
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.mail_outline,
                          color: Colors.white,
                        ),
                      ),
                      validator: (val) => val!.isEmpty ? "Enter email" : null,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: pass,
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                        ),
                      ),
                      validator: (val) => val!.isEmpty ? "Enter Password" : null,
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NewHome()));
                      /*if (key.currentState!.validate()) {
                        login(email.text.trim(), pass.text.trim());
                      }*/
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      textStyle: TextStyle(fontSize: 20),
                      elevation: 15,
                      shadowColor: Colors.white,
                      backgroundColor: Colors.yellow,
                      fixedSize: Size(150, 50),
                    ),
                    child: Text("Login",style: TextStyle(color:Colors.black),),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      if (key.currentState!.validate()) {
                        forgotPass(email.text.trim());
                      }
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a Member?",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 3),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NewHome()));
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class Star extends StatelessWidget {
  final double size;
  final Offset offset;

  const Star({Key? key, required this.size, required this.offset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: CustomPaint(
        size: Size(size, size),
        painter: StarPainter(),
      ),
    );
  }
}

class StarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;

    Path path = Path();
    double radius = size.width / 2;
    double centerX = size.width / 2;
    double centerY = size.height / 2;

    double angle = (4 * pi) / 5; // 144 degrees

    path.moveTo(centerX, centerY - radius);

    for (int i = 1; i <= 5; i++) {
      double x = centerX + radius * sin(i * angle);
      double y = centerY - radius * cos(i * angle);
      path.lineTo(x, y);

      x = centerX + (radius / 2) * sin((i + 0.5) * angle);
      y = centerY - (radius / 2) * cos((i + 0.5) * angle);
      path.lineTo(x, y);
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
