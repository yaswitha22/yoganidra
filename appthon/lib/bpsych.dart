import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class bpsych extends StatefulWidget {
  const bpsych({super.key});

  @override
  State<bpsych> createState() => _bpsychState();
}

class _bpsychState extends State<bpsych> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Human Resources Assistant"),
    ListItemModel(label: "Administrative Roles in Mental Health Organizations"),
    ListItemModel(label: "Youth Counselor or Mentor"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Employee Assistance Programs (EAPs)"),
    ListItemModel(label: "Training and Development Departments"),
    ListItemModel(label: "Behavioral Health Organizations"),
    ListItemModel(label: "Social Work Agencies"),
    ListItemModel(label: "Rehabilitation Centers"),
    ListItemModel(label: "Counselling Centers"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Critical Thinking"),
    ListItemModel(label: "Communication Skills"),
    ListItemModel(label: "Empathy and Interpersonal Skills"),
    ListItemModel(label: "Problem-Solving"),
    ListItemModel(label: "Counseling and Helping Skills"),
    ListItemModel(label: "Time Management"),
    ListItemModel(label: "Interviewing Skills"),
    ListItemModel(label: "Research Skills")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BPsych",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Container(
                      height: 150,
                      width: 300,
                      color: Colors.black,
                      child: Image(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.y9GFtnP8cYq6K6NSBw_mTQHaCt&pid=Api&P=0&h=220"),
                          fit: BoxFit.cover))
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("BPsych degree is a professional qualification that leads to registration with the Health Professions Council of South Africa (HPCSA) as a Registered Counsellor.\n\nThe BPsych degree empowers you with knowledge and essential “work ready” counselling and communication skills to provide short-term supportive counselling, psycho-education and psychological assessment.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("On completing a BPsych course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("Recruiters to hire BPsych graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 2.5 LPA and 5 LPA ",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
