import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'homepage.dart';
class log extends StatefulWidget {
  const log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
       stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
         if(snapshot.hasData){
           return mainsrc();
         }
         else{
           return Signuppage();
         }
        }
    );
  }
}
