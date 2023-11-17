import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class lsexam extends StatefulWidget {
  const lsexam({super.key});

  @override
  State<lsexam> createState() => _lsexamState();
}

class _lsexamState extends State<lsexam> {
  final List<ListItemModel> nat=[
    ListItemModel(label: "CLAT (Common Law Admission Test)"),
    ListItemModel(label: "AILET (All India Law Entrance Test)"),
    ListItemModel(label: "LSAT-India (Law School Admission Test - India)"),
    ListItemModel(label: "DULLB (Delhi University LLB Entrance Exam"),
  ];
  final List<ListItemModel> state=[
    ListItemModel(label: "MHCET Law (Maharashtra Common Entrance Test)"),
    ListItemModel(label: "KLEE (Kerala Law Entrance Examination)"),
    ListItemModel(label: "TSLAWCET (Telangana State Law Common Entrance Test)"),
    ListItemModel(label: "AP LAWCET (Andhra Pradesh Law Common Entrance Test)"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Entrance Exams",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(

                          colors: [Colors.black,Colors.blueGrey]
                      )
                  ),
                  child: Center(child: Text("National Level",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20,),
              FlutterBulletList(data: nat,spaceBetweenItem:15,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20),),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(

                          colors: [Colors.blueGrey,Colors.black,]
                      )
                  ),
                  child: Center(child: Text("State Level",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20,),
              FlutterBulletList(data: state,spaceBetweenItem:15,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
