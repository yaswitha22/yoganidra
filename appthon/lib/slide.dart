
import 'package:appthon/signup.dart';
import 'package:flutter/material.dart';
class hscrn extends StatefulWidget {
  const hscrn({super.key});

  @override
  State<hscrn> createState() => _hscrnState();
}

class _hscrnState extends State<hscrn> {
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
              child: Text("What's",style: TextStyle(fontSize: 70,color: Colors.black),)),
         Align(
           widthFactor:10,
           heightFactor: 4.8,
           child: GestureDetector(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Signuppage()));
             },child: Text("                Next?",style: TextStyle(fontSize: 60,color: Colors.black,),),
           )
         )
      ],
      ),
    );
  }
}
