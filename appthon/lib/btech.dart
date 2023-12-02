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
        title: Center(child: Text("B.TECH",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.deepPurple,Colors.pinkAccent]
              )
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text("B.TECH-(Bachelor of Technology):",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 20,),
              Container(
                height: 120,
                  width: 500,
                  decoration: BoxDecoration(
                  color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(child: Text("The B.Tech program usually spans four years, with each year divided into semesters. B.Tech programs typically focus on engineering and technology disciplines. ",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  )),
              SizedBox(height: 20,),
              Text("Core Courses:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 20,),
              Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                 color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>aiml()));
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 10,),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Center(child: Text("                                        AIML\n(Artificial Intelligence and Machine Learning)",style: TextStyle(color: Colors.white,fontSize: 15),)),
                               ),
                                Icon(Icons.arrow_right_outlined,color: Colors.white,size: 30,)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>cse()));
                          },
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("                                       CSE\n       (Computer Science and Engineering)",style: TextStyle(color: Colors.white,fontSize: 16),),
                                  SizedBox(width: 30,),
                                  Icon(Icons.arrow_right_outlined,color: Colors.white,size: 30,)
                                ],
                              ),
                            )),
                        SizedBox(height: 20,),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>it()));
                            },
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(child: Text("                                        IT\n                     (Information Technology)",style: TextStyle(fontSize: 16,color: Colors.white))),
                                  SizedBox(width: 50,),
                                  Icon(Icons.arrow_right_outlined,color: Colors.white,size: 30,)
                                ],
                              ),
                            )
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ece()));
                          },
                            child: Center(
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("                                          ECE\n     (Electronics and Communication Engineering)",style: TextStyle(fontSize: 15,color: Colors.white),),
                                    SizedBox(width: 3,),
                                    Icon(Icons.arrow_right_outlined,color: Colors.white,size: 30,)
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(height: 20,),
                         InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>eee()));
                           },
                             child: Container(
                               height: 50,
                               width: double.infinity,
                               decoration: BoxDecoration(
                                   color: Colors.deepPurple,
                                   borderRadius: BorderRadius.circular(30)
                               ),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text("                                       EEE\n       (Electrical and Electronics Engineering)",style: TextStyle(fontSize: 16,color: Colors.white),),
                                   SizedBox(width: 20,),
                                   Icon(Icons.arrow_right_outlined,color: Colors.white,size: 30,)
                                 ],
                               ),
                             )),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>civil()));
                          },
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(30)
                              ),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("                          Civil Engineering",style: TextStyle(fontSize: 16,color: Colors.white)),
                                  SizedBox(width: 90,),
                                  Icon(Icons.arrow_right_outlined,color: Colors.white,size: 30,)
                                ],
                              ),
                            )
                        ),
                        SizedBox(height: 20,),
                         InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>mech()));
                           },
                             child: Container(
                               height: 50,
                               width: double.infinity,
                               decoration: BoxDecoration(
                                   color: Colors.deepPurple,
                                   borderRadius: BorderRadius.circular(30)
                               ),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text("                      Mechanical Engineering",style: TextStyle(fontSize: 16,color: Colors.white)),
                                   SizedBox(width: 45,),
                                   Icon(Icons.arrow_right_outlined,color: Colors.white,size: 30,)
                                 ],
                               ),
                             )
                         ),
                      ],
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
