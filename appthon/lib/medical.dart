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
                  colors: [Colors.blueGrey,Colors.black]
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
              Center(child: Text("MEDICAL",style: TextStyle(fontSize: 35,color: Colors.red,fontWeight: FontWeight.bold),)),
              SizedBox(width: 10,),
              Center(child: Text("(MBBS or B.Pharm) Courses",style: TextStyle(fontSize: 30,color: Colors.orange,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
              Card(
                color: Colors.blue,
                elevation: 20,
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
                          Image(image: NetworkImage("https://cdn.uniacco.com/blog/wp-content/uploads/2021/05/25165322/image.jpg")),
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
                          Image(image: NetworkImage("https://images.shiksha.com/mediadata/images/articles/1585945577phpJshsCH.jpeg")),
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
                          Image(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.fcKRB3Zfen6oPtZcx__niwHaDs&pid=Api&P=0&h=220")),
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
                          Image(image: NetworkImage("https://medhigh.com/wp-content/uploads/2015/12/02-600x-820x400.jpg")),
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
