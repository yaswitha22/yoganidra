import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class mech extends StatefulWidget {
  const mech({super.key});

  @override
  State<mech> createState() => _mechState();
}

class _mechState extends State<mech> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Mechanical Engineer"),
    ListItemModel(label: "Industrial Engineer"),
    ListItemModel(label: "Mechanical Engineering Technologist"),
    ListItemModel(label: "Electro-Mechanical or Mechatronic Technologist"),
    ListItemModel(label: "Nuclear Engineer"),
    ListItemModel(label: "Aerospace engineer"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Boeing"),
    ListItemModel(label: "Lockheed Martin"),
    ListItemModel(label: "Toyota"),
    ListItemModel(label: "Tesla, Inc."),
    ListItemModel(label: "Ford Motor Company"),
    ListItemModel(label: "Rolls-Royce"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "CAD"),
    ListItemModel(label: "Team Management"),
    ListItemModel(label: "Creative Thinking"),
    ListItemModel(label: "Cross-functional Team Working Abilities",),
    ListItemModel(label: "Software Skills"),
    ListItemModel(label: "Computing Skills like MS Excel and Autocad.",),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Mechanical",style: TextStyle(fontSize: 25,color: Colors.white),)),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      height: 150,
                      width: 300,
                      color: Colors.black,
                      child: Image(image: NetworkImage("https://www.thoughtco.com/thmb/jxwAneFSvn3201zVygWFsLOhPyY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/industry-4-0-car-frame---landscape-954178086-5bd99d1846e0fb0051a52d39.jpg"),fit: BoxFit.cover,)),
                ),
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("Mechanical engineering is a STEM field related to the design, analysis, testing, and manufacture of objects ranging from children's toys to airplanes. More students study mechanical engineering than any other branch of engineering.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              Text("Many mechanical engineers spend a large portion of their day sitting in front of a computer using CAD (computer-aided design), CAE (computer-aided engineering) and CAM (computer-aided manufacturing) software tools.\n\nMechanical engineers work for a wide range of employers since so much in our world depends upon the field.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("Some job titles are listed here:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16),),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              SizedBox(height: 10,),
              Text("Core companies to hire AIML graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 3 LPA and 7 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
