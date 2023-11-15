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
                    child: Image(image: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.AYyvvznZo4uzDLnrvI-CTAHaEm&pid=Api&P=0&h=220"),
                    fit: BoxFit.cover))
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("Bachelor of Arts or BA course is a three-years-long undergraduate degree programme. BA degree is provided to students who have completed their graduation in humanities, social sciences, languages, and fine arts.\n\nB.A degree programme is designed to develop critical thinking abilities, and analytical skills to work in various fields, such as academics, media, research, public administration, and cultural industries.\n\nThe BA degree is offered in various specialisations such as English, History, Hindi, Sociology, Political Science, Urdu, Economics, Tamil, and Odia.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("On completing a B.A. degree course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              SizedBox(height: 10,),
              Text("Core companies to hire BA graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
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
