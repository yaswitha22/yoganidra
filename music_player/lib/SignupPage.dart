import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:music_player/auth.dart';
import 'login.dart';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';

class Signuppage extends StatefulWidget {
  Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  String? errorMessage = '';
  final key = GlobalKey<FormState>();
  final email = TextEditingController();
  final pass = TextEditingController();
  final name = TextEditingController();

  final auth = FirebaseAuth.instance;

  Future<void> usernameadd(String name, String email, String uid) async {
    await FirebaseFirestore.instance.collection('users').doc(auth.currentUser!.uid).set({
      'name': name,
      'uid': uid,
      'email': email,
    });
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email.text,
        password: pass.text,
      ).then((value) async {
        await usernameadd(name.text, email.text, FirebaseAuth.instance.currentUser!.uid);
        Navigator.push(context, MaterialPageRoute(builder: (context) => AuthChange()));
      }).catchError((error) {
        setState(() {
          errorMessage = error.message;
        });
        _showErrorDialog(errorMessage);
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
      _showErrorDialog(errorMessage);
    }
  }

  void _showErrorDialog(String? message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Error"),
        content: Text(message ?? "An error occurred. Please try again."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Stack(
              children: _buildStars(context),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(18.0),
            child: Form(
              key: key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: name,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: "Name",
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        icon: Icon(Icons.person, color: Colors.white),
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.white70),
                      ),
                      validator: (val) => val!.isEmpty ? "Enter Name" : null,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: email,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        icon: Icon(Icons.mail_outline, color: Colors.white),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white70),
                      ),
                      validator: (val) => val!.isEmpty ? "Enter Email" : null,
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
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        icon: Icon(Icons.password_outlined, color: Colors.white),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white70),
                      ),
                      validator: (val) => val!.isEmpty ? "Enter password" : null,
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        createUserWithEmailAndPassword();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      textStyle: TextStyle(fontSize: 20),
                      elevation: 15,
                      shadowColor: Colors.white,
                      backgroundColor: Colors.yellow,
                      fixedSize: Size(150, 50),
                    ),
                    child: Text("Signup"),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already a member?",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        child: const Text(
                          "Login",
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

  List<Widget> _buildStars(BuildContext context) {
    final List<Widget> stars = [];
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final random = Random();

    for (int i = 0; i < 30; i++) {
      double starSize = random.nextInt(10).toDouble() + 5;
      double starLeft = random.nextDouble() * screenWidth;
      double starTop = random.nextDouble() * screenHeight;

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
