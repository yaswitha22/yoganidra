import 'dart:async';
import 'preuni.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  void initState() {
    super.initState();
    startTime();
  }
  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }
  route() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Preuni()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }
}

initScreen(BuildContext context){
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter,colors: [Colors.pinkAccent,Colors.deepPurple])
          ),
          child: Opacity(
              opacity: 0.1,
              child: Image(image:AssetImage('assets/dest.jpg'),fit: BoxFit.fitHeight,))),
      Padding(
        padding: const EdgeInsets.only(left: 50,bottom: 80),
        child: Row(
          children: [
            Text("pathForge",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(width: 5,),
            Icon(Icons.school_outlined,size: 60,),
          ],
        ),
      ),
      SizedBox(height: 20,),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          LoadingAnimationWidget.threeRotatingDots(
              color:Colors.black , size:50),
        ],
      )
    ],
  );
}
