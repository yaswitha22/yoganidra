import 'package:appthon/EngExam.dart';
import 'package:appthon/artsexam.dart';
import 'package:appthon/be.dart';
import 'package:appthon/businessexam.dart';
import 'package:appthon/commerceexam.dart';
import 'package:appthon/cse.dart';
import 'package:appthon/education.dart';
import 'package:appthon/eduexam.dart';
import 'package:appthon/handtexam.dart';
import 'package:appthon/loginpage.dart';
import 'package:appthon/lsexam.dart';
import 'package:appthon/medexam.dart';
import 'package:appthon/newhome.dart';
import 'package:appthon/preuni.dart';
import 'package:appthon/profile.dart';
import 'package:appthon/sciexam.dart';
import 'package:appthon/signup.dart';
import 'package:appthon/socialexam.dart';
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
      home:be(),
    );
  }
}

