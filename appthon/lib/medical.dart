import 'package:appthon/bpharm.dart';
import 'package:appthon/bsc(nursing).dart';
import 'package:appthon/mbbs.dart';
import 'package:flutter/material.dart';

import 'medexam.dart';
class medical extends StatefulWidget {
  const medical({super.key});

  @override
  State<medical> createState() => _medicalState();
}

class _medicalState extends State<medical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Medical",style: TextStyle(fontSize: 25,color: Colors.white),)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.pinkAccent,Colors.deepPurple]
              )
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Colors.blue,
                elevation: 10,
                shadowColor: Colors.black87,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mbbs()));
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: AssetImage('assets/mbbs.jpg')))),
                          SizedBox(height: 20,),
                          Text("MBBS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                shadowColor: Colors.black87,
                color: Colors.pinkAccent,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>bpharm()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: AssetImage('assets/bpharm.jpg')))),
                          SizedBox(height: 20,),
                          Text("B.Pharm",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                shadowColor: Colors.black87,
                color: Colors.green,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>nursing()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: AssetImage('assets/bsc(nur).jpg')))),
                          SizedBox(height: 20,),
                          Text("B.Sc(Nursing)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                shadowColor: Colors.black87,
                color: Colors.yellow,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>medicalexam()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image:AssetImage('assets/exam.jpg')))),
                          SizedBox(height: 20,),
                          Text("Common Entrance Exams",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
