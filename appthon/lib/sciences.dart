import 'package:appthon/sciexam.dart';
import 'package:flutter/material.dart';

import 'bsc.dart';
class sciences extends StatefulWidget {
  const sciences({super.key});

  @override
  State<sciences> createState() => _sciencesState();
}

class _sciencesState extends State<sciences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Science",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
              Center(child: Text("SCIENCE",style: TextStyle(fontSize: 35,color: Colors.red,fontWeight: FontWeight.bold),)),
              SizedBox(width: 10,),
              Center(child: Text("(B.Sc) Courses",style: TextStyle(fontSize: 30,color: Colors.orange,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Colors.blue,
                elevation: 10,
                shadowColor: Colors.black87,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>bsc()));
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: NetworkImage("https://bcdn.mindler.com/bloglive/wp-content/uploads/2019/06/13154448/science-stream-subjects-after-10th-1024x512.png")))),
                          SizedBox(height: 20,),
                          Text("B.Sc",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 10,
                shadowColor: Colors.black87,
                color: Colors.pinkAccent,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>scienceexam()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: NetworkImage("https://medhigh.com/wp-content/uploads/2015/12/02-600x-820x400.jpg")))),
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
