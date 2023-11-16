import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class ba extends StatefulWidget {
  const ba({super.key});

  @override
  State<ba> createState() => _baState();
}

class _baState extends State<ba> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Teacher"),
    ListItemModel(label: "Social Worker"),
    ListItemModel(label: "Counsellor"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Times of India"),
    ListItemModel(label: " Netflix"),
    ListItemModel(label: "Shutterstock"),
    ListItemModel(label: "Amazon"),
    ListItemModel(label: "NGOs"),
    ListItemModel(label: "Dell"),
    ListItemModel(label: "Wrangler"),
    ListItemModel(label: "Nike"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Communication Skills"),
    ListItemModel(label: "Presentation Skills"),
    ListItemModel(label: "Critical Thinking"),
    ListItemModel(label: "Visualisation"),
    ListItemModel(label: "Command Over Language"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BA",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      height: 150,
                      width: 300,
                      color: Colors.black,
                      child: Image(image: AssetImage('assets/ba1.jpg'),
                      fit: BoxFit.cover)),
                )
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 115,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Bachelor of Arts or BA course is a three-years-long undergraduate degree programme. BA degree is provided to students who have completed their graduation in humanities, social sciences.",style: TextStyle(fontSize: 17,color: Colors.white,),textAlign: TextAlign.center,),
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 100,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("The BA degree is offered in various specialisations such as English, History, Hindi, Sociology, Political Science, Urdu, Economics, Tamil, and Odia.",style: TextStyle(fontSize: 17,color: Colors.white,),textAlign: TextAlign.center,),
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 100,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("B.A degree programme is designed to develop critical thinking abilities, and analytical skills to work in various fields, such as academics, media.",style: TextStyle(fontSize: 17,color: Colors.white,),textAlign: TextAlign.center,),
                  )),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 200,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("On completing a B.A. degree course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.white),),
                        SizedBox(height: 10,),
                        Container(
                            height: 100,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FlutterBulletList(data: _data,bulletSize: 2,bulletColor:Colors.deepPurple,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16,color: Colors.white)),
                            )),
                      ],
                    ),
                  ))),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 170,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlutterBulletList(data: skills,bulletSize: 2,bulletColor:Colors.deepPurple,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16,color: Colors.white)),
                  )),
              SizedBox(height: 20,),
              Text("Core companies to hire BA graduates:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Container(
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: FlutterBulletList(data: comp,bulletSize: 2,bulletType: BulletType.square,bulletColor:Colors.pinkAccent,textStyle: TextStyle(fontSize: 16,color: Colors.white))),
                  )),
              SizedBox(height: 20,),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Container(
                  height:50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.pinkAccent,),
                  child: Center(child: Text("Between 2 LPA and 8 LPA",style: TextStyle(fontSize: 17,color: Colors.white),)))
            ],
          ),
        ),
      ),
    );
  }
}
