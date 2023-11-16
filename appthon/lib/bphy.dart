import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class bphyd extends StatefulWidget {
  const bphyd({super.key});

  @override
  State<bphyd> createState() => _bphydState();
}

class _bphydState extends State<bphyd> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Fitness Trainer"),
    ListItemModel(label: "Physical Education Teacher"),
    ListItemModel(label: "Recreational Worker"),
    ListItemModel(label: "Sports Scout"),
    ListItemModel(label: "Rehabilitation Therapist"),
    ListItemModel(label: "Sports Coach"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Schools and Educational Institutions"),
    ListItemModel(label: "Colleges and Universities"),
    ListItemModel(label: "Sports Academies and Training Centers"),
    ListItemModel(label: "Government Schools and Colleges"),
    ListItemModel(label: "Private Fitness Centers and Gyms"),
    ListItemModel(label: "Adventure Sports and Outdoor Education Centers"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Athletic Ability"),
    ListItemModel(label: "Adaptability"),
    ListItemModel(label: "Organisational Skills"),
    ListItemModel(label: "Goal Setting"),
    ListItemModel(label: "Decision Making"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("B.P.Ed",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                        height: 150,
                        width: 300,
                        color: Colors.black,
                        child: Image(image: AssetImage('assets/bped1.jpg'),
                            fit: BoxFit.cover)),
                  )
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("B.P.Ed. is an undergraduate degree in physical education. It is the abbreviation of Bachelor of Physical Education.\n\nStudents interested in sports and physical fitness can opt for a B.P.Ed. degree and find numerous career opportunities ahead.\n\nThe B.P.Ed course is designed to provide aspirants with knowledge on the importance of physical and mental well-being.\n\nIt discusses the role of various sports and physical activities in the improvement of health in our daily life.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("On completing a B.Ph.Ed course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Skills Required:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("Recuiters to hire B.Ph.Ed graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 2 LPA and 5 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
