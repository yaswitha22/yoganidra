import 'package:appthon/civil.dart';
import 'package:appthon/cse.dart';
import 'package:appthon/ece.dart';
import 'package:appthon/eee.dart';
import 'package:appthon/it.dart';
import 'package:appthon/mech.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';

import 'aiml.dart';
class btech extends StatefulWidget {
  const btech({super.key});

  @override
  State<btech> createState() => _btechState();
}

class _btechState extends State<btech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("B.TECH",style: TextStyle(fontSize: 25,color: Colors.white),)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.blueGrey,Colors.black]
              )
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text("B.TECH-(Bachelor of Technology):",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("The B.Tech program usually spans four years, with each year divided into semesters. B.Tech programs typically focus on engineering and technology disciplines. ",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Core Courses:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink),),
              SizedBox(height: 20,),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                 // color: Colors.grey,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>aiml()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                         Center(child: Text("AIML-(Artificial Intelligence and Machine Learning)",style: TextStyle(color: Colors.black,fontSize: 15),)),
                          Icon(Icons.arrow_right_outlined,color: Colors.black,size: 30,)
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>cse()));
                      },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("CSE-(Computer Science and Engineering)",style: TextStyle(color: Colors.black,fontSize: 16),),
                            Icon(Icons.arrow_right_outlined,color: Colors.black,size: 30,)
                          ],
                        )),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>it()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("IT-(Information Technology)",style: TextStyle(fontSize: 16)),
                            Icon(Icons.arrow_right_outlined,color: Colors.black,size: 30,)
                          ],
                        )
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ece()));
                      },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("ECE-(Electronics and Communication Engineering)",style: TextStyle(fontSize: 15),),
                            Icon(Icons.arrow_right_outlined,color: Colors.black,size: 30,)
                          ],
                        )),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>eee()));
                       },
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text("EEE-(Electrical and Electronics Engineering)",style: TextStyle(fontSize: 16),),
                             Icon(Icons.arrow_right_outlined,color: Colors.black,size: 30,)
                           ],
                         )),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>civil()));
                      },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Civil Engineering",style: TextStyle(fontSize: 16)),
                            Icon(Icons.arrow_right_outlined,color: Colors.black,size: 30,)
                          ],
                        )),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>mech()));
                       },
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text("Mechanical Engineering",style: TextStyle(fontSize: 16)),
                             Icon(Icons.arrow_right_outlined,color: Colors.black,size: 30,)
                           ],
                         )
                     ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
