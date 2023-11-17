import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class handtexam extends StatefulWidget {
  const handtexam({super.key});

  @override
  State<handtexam> createState() => _handtexamState();
}

class _handtexamState extends State<handtexam> {
  final List<ListItemModel> nat=[
    ListItemModel(label: "National Eligibility cum Entrance Test (NEET)"),
    ListItemModel(label: "All India Institute of Medical Sciences (AIIMS)"),
    ListItemModel(label: "Jawaharlal Institute of Postgraduate Medical Education and Research (JIPMER)"),

  ];
  final List<ListItemModel> state=[
    ListItemModel(label: "MHT CET (Maharashtra Common Entrance Test)"),
    ListItemModel(label: "UPCPMT (Uttar Pradesh Combined Pre-Medical Test)"),
    ListItemModel(label: "WBJEE (West Bengal Joint Entrance Examination)"),
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
                  height: 250,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(child: FlutterBulletList(data: nat,bulletColor:Colors.deepPurple,spaceBetweenItem:15,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20,color: Colors.white),)),
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
                  height: 250,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Center(child: FlutterBulletList(data: state,bulletColor:Colors.pinkAccent,spaceBetweenItem:15,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20,color: Colors.white),)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
