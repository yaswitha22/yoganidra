import 'package:appthon/signup.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:loading_animation_widget/loading_animation_widget.dart';
class hscrn extends StatefulWidget {
  const hscrn({super.key});

  @override
  State<hscrn> createState() => _hscrnState();
}


class _hscrnState extends State<hscrn> {
  void initState() {
  super.initState();
  startTime();
  }
  startTime() async {
  var duration = new Duration(seconds: 2);
  return new Timer(duration, route);
  }
  route() {
  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signuppage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Image(image:AssetImage('assets/path.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
          Align(
            widthFactor: 2.6,
              heightFactor: 2,
              child: Text("What's",style: TextStyle(fontSize: 60,color: Colors.black),)),
         Align(
           widthFactor:10,
           heightFactor: 4.8,
           child: Text("                Next?",style: TextStyle(fontSize: 60,color: Colors.black),)
         ),
          SizedBox(height: 20,)
      ],

      ),
    );
  }
}
