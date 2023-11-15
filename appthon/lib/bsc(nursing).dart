import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class nursing extends StatefulWidget {
  const nursing({super.key});

  @override
  State<nursing> createState() => _nursingState();
}

class _nursingState extends State<nursing> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Nurse"),
    ListItemModel(label: "Healthcare Assistant"),
    ListItemModel(label: "Specialty Nursing"),
    ListItemModel(label: "Clinical Nurse Leader"),
    ListItemModel(label: "Clinical Nurse Leader"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "All India Institute of Medical Sciences"),
    ListItemModel(label: "Apollo Group"),
    ListItemModel(label: "Indian Nursing Council"),
    ListItemModel(label: "Fortis Hospitals"),
    ListItemModel(label: "Manipal Group"),
    ListItemModel(label: "Medica"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Patience"),
    ListItemModel(label: "Communication Skills"),
    ListItemModel(label: "Critical Thinking"),
    ListItemModel(label: "Empathy"),
    ListItemModel(label: "Physical Strength"),
    ListItemModel(label: "Attention to Detail")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Center(child: Text("BSc Nursing",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
    child: Image(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.KYcPq73eTGrDTwTnSUCSiAHaEc&pid=Api&P=0&h=220"),
    fit: BoxFit.cover))
    ),
    SizedBox(height: 20,),
    Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
    SizedBox(height: 10,),
    Text("BSc Nursing (Bachelor of Science in Nursing) is a medical science course at the undergraduate degree level and the BSc Nursing course duration is of four-year. Aspirants who have completed 10+2 in the Science stream with a major focus on Biology or have completed a diploma in Nursing are eligible for the BSc Nursing course.\n\nBSc Nursing course duration is of four-year and it is an undergraduate degree programme which prepares students to serve humanity through medical treatment.\n\nThis undergraduate degree in Nursing course inculcates the art of providing treatment to patients with empathy. BSc Nursing course curriculum includes various topics like Physiology, Anatomy, Biochemistry, Nutrition and Dietetics, and Psychology all related to the human body.",style: TextStyle(fontSize: 17,color: Colors.black),),
    SizedBox(height: 20,),
    Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
    SizedBox(height: 10,),
    Text("On completing a BSc Nursing course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.black),),
    SizedBox(height: 10,),
    FlutterBulletList(data: _data,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
    SizedBox(height: 20,),
    Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
    SizedBox(height: 10,),
    FlutterBulletList(data: skills,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
    SizedBox(height: 10,),
    Text("Core companies to hire BSc Nursing graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
    SizedBox(height: 10,),
    FlutterBulletList(data: comp,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
    Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
    SizedBox(height: 10,),
    Text("Between 2 LPA and 8 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
    ],
    ),
    ),
    ),
    );
  }
}
