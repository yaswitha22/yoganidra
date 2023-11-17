import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class socialexam extends StatefulWidget {
  const socialexam({super.key});

  @override
  State<socialexam> createState() => _socialexamState();
}

class _socialexamState extends State<socialexam> {
  final List<ListItemModel> nat=[
    ListItemModel(label: "UGC NET (National Eligibility Test)"),
    ListItemModel(label: "JNU Entrance Exam(Jawaharlal Nehru University's Entrance Exam)"),
    ListItemModel(label: "IGNOU OPENMAT(ndira Gandhi National Open University's Entrance Exam)"),
    ListItemModel(label: "UPSC Civil Services Examination (Union Public Service Commission")

  ];
  final List<ListItemModel> state=[
    ListItemModel(label: "Tamil Nadu SET (State Eligibility Test)"),
    ListItemModel(label: "Kerala SET (State Eligibility Test) "),
    ListItemModel(label: "Maharashtra SET (State Eligibility Test)"),
    ListItemModel(label: "West Bengal SET (State Eligibility Test)")
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
                  height: 280,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Center(child: FlutterBulletList(data: nat,spaceBetweenItem:15,bulletColor:Colors.deepPurple,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20,color: Colors.white),)),
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
                  height: 280,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Center(child: FlutterBulletList(data: state,spaceBetweenItem:15,bulletColor:Colors.pinkAccent,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20,color: Colors.white),)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
