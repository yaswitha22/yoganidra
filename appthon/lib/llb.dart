import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class llb extends StatefulWidget {
  const llb({super.key});

  @override
  State<llb> createState() => _llbState();
}

class _llbState extends State<llb> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Government Lawyer"),
    ListItemModel(label: "Legal Advisor"),
    ListItemModel(label: "Corporate Lawyer"),
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
    ListItemModel(label: "Information analysis"),
    ListItemModel(label: "Communication Skills"),
    ListItemModel(label: "Perseverance"),
    ListItemModel(label: "Empathy"),
    ListItemModel(label: "Judgement skills"),
    ListItemModel(label: "Attention to Detail"),
    ListItemModel(label: "Decision making skills"),
    ListItemModel(label: "Research Skills")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("LLB",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
                      child: Image(image: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.S9rBYNFKAsqS6YGMsEKFrgHaD2&pid=Api&P=0&h=220"),
                          fit: BoxFit.cover))
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("LLB or Bachelor of Legislative Law, is an undergraduate degree programme in Law, of three-year or five-year duration that can be pursued after graduation and 10+2 respectively.\n\nBachelor of Legislative Law is a foundational course in law that provides students the knowledge about legal procedures followed in the law profession.\n\nLLB course helps the students in developing a logical, analytical and critical understanding of legal affairs and teaches them how to use these skills for resolving social, legal issues of the society",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("On completing a LLB course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("Core companies to hire LLB graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 5 LPA and 50 LPA based on specialisation",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
