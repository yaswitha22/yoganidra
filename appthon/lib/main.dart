import 'package:appthon/aiml.dart';
import 'package:appthon/arts.dart';
import 'package:appthon/ba.dart';
import 'package:appthon/bba.dart';
import 'package:appthon/bbm.dart';
import 'package:appthon/btech.dart';
import 'package:appthon/engineering.dart';
import 'package:appthon/home.dart';
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
      home:bba(),
    );
  }
}

