import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class scienceexam extends StatefulWidget {
  const scienceexam({super.key});

  @override
  State<scienceexam> createState() => _scienceexamState();
}

class _scienceexamState extends State<scienceexam> {
  final List<ListItemModel> nat=[
    ListItemModel(label: "Joint Entrance Examination (JEE) Main"),
    ListItemModel(label: "Joint Entrance Examination (JEE) Advanced"),
    ListItemModel(label: "National Eligibility cum Entrance Test (NEET)"),
    ListItemModel(label: "National Institute of Fashion Technology (NIFT) Entrance Exam"),
    ListItemModel(label: "Indian Statistical Institute (ISI) Admission Test"),
    ListItemModel(label: "National Entrance Screening Test (NEST)"),
  ];
  final List<ListItemModel> state=[
    ListItemModel(label: "MHT CET (Maharashtra Common Entrance Test)"),
    ListItemModel(label: "Common Entrance Test (CET) Karnataka`"),
    ListItemModel(label: "Rajasthan Pre-Engineering Test (RPET)"),
    ListItemModel(label: "West Bengal Joint Entrance Examination (WBJEE)"),
    ListItemModel(label: "Tamil Nadu Engineering Admission (TNEA)"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Entrance Exams",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
            children: [
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          colors: [Colors.deepPurple,Colors.pinkAccent]
                      )
                  ),
                  child: Center(child: Text("National Level",style: TextStyle(fontSize: 27,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  height: 400,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Center(child: FlutterBulletList(data: nat,bulletColor:Colors.deepPurple,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20,color: Colors.white),spaceBetweenItem: 15,)),
                  )),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(

                          colors: [Colors.pinkAccent,Colors.deepPurple,]
                      )
                  ),
                  child: Center(child: Text("State Level",style: TextStyle(fontSize: 27,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  height: 350,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Center(child: FlutterBulletList(spaceBetweenItem:15,data: state,bulletColor:Colors.pinkAccent,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20,color: Colors.white),)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
