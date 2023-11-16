import 'package:appthon/cse.dart';
import 'package:appthon/loginpage.dart';
import 'package:appthon/newhome.dart';
import 'package:appthon/profile.dart';
import 'package:appthon/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'name.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  runApp(
      MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:cse(),
    );
  }
}

