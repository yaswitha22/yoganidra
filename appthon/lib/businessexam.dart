import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class businessexam extends StatefulWidget {
  const businessexam({super.key});

  @override
  State<businessexam> createState() => _businessexamState();
}

class _businessexamState extends State<businessexam> {
  final List<ListItemModel> nat=[
    ListItemModel(label: "Undergraduate Common Entrance Examination for Design (UCEED)"),
    ListItemModel(label: "National Entrance Screening Test (NEST)"),
    ListItemModel(label: "Integrated Program in Management Aptitude Test (IPMAT)"),
    ListItemModel(label: "Symbiosis Entrance Test (SET)"),
    ListItemModel(label: "Christ University Entrance Test (CUET)"),
  ];
  final List<ListItemModel> state=[
    ListItemModel(label: "Maharashtra Common Entrance Test (MAH-CET)"),
    ListItemModel(label: "Telangana State Integrated Common Entrance Test (TS ICET)"),
    ListItemModel(label: "Karnataka Common Entrance Test (KCET)"),
    ListItemModel(label: "Andhra Pradesh Integrated Common Entrance Test (AP ICET)"),
    ListItemModel(label: "Rajasthan Common Entrance Test (RMCAAT)"),
    ListItemModel(label: "Kerala : KEAM (Kerala Engg Agriculture Medical Exam)"),
    ListItemModel(label: "Gujarat Common Entrance Test (GUJCET)"),
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
                  child: Center(child: Text("National Level",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  height: 315,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(child: FlutterBulletList(spaceBetweenItem:15,bulletColor:Colors.deepPurple,data: nat,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20,color: Colors.white),)),
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
                  child: Center(child: Text("State Level",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  height: 460,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(child: FlutterBulletList(spaceBetweenItem:15,bulletColor:Colors.pinkAccent,data: state,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20,color: Colors.white),)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
