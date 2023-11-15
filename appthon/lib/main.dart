import 'package:appthon/bcom.dart';
import 'package:appthon/commerce.dart';
import 'package:appthon/editprofile.dart';
import 'package:appthon/engineering.dart';
import 'package:appthon/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'name.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  runApp(
      ChangeNotifierProvider(
    create: (context)=>UserProfile(),
      child: MyApp()));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:home(),
    );
  }
}

