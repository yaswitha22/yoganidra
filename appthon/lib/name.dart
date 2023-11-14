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
    var duration = new Duration(seconds: 8);
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
          color: Colors.blueGrey,
          child: Opacity(
              opacity: 0.1,
              child: Image(image:AssetImage('assets/dest.jpg'),fit: BoxFit.fitHeight,))),
      Padding(
        padding: const EdgeInsets.only(left: 50,bottom: 80),
        child: Row(
          children: [
            Text("pathForge",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(width: 10,),
            Icon(Icons.school_outlined,size: 60,),
          ],
        ),
      ),
      SizedBox(height: 30,),
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
