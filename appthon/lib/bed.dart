import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class bed extends StatefulWidget {
  const bed({super.key});

  @override
  State<bed> createState() => _bedState();
}

class _bedState extends State<bed> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Teacher"),
    ListItemModel(label: "Private Tutor"),
    ListItemModel(label: "Educational Consultant"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Government and Private Schools"),
    ListItemModel(label: "National Council of Educational Research and Training (NCERT)"),
    ListItemModel(label: "National University of Educational Planning and Administration (NUEPA)"),
    ListItemModel(label: "Amity International School, all NCR branches"),
    ListItemModel(label: "Presidium, all NCR branches"),
    ListItemModel(label: "Educomp Solutions"),
    ListItemModel(label: "Bal Bharti Public School"),
    ListItemModel(label: "Delhi Public School, All Branches"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Presentation Skills"),
    ListItemModel(label: "Communication Skills"),
    ListItemModel(label: "Critical thinking"),
    ListItemModel(label: "Visualisation"),
    ListItemModel(label: "Command over language"),
    ListItemModel(label: "Creativity"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("B.Ed",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
                      child: Image(image: NetworkImage("https://tse2.mm.bing.net/th?id=OIP.K3Hx5jlF1IIqd9MrlY_IiQHaGM&pid=Api&P=0&h=220"),
                          fit: BoxFit.cover))
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("Bachelor of Education or B.Ed course is an undergraduate professional course in the field of teaching which has become a mandate for those who are interested in teaching at the primary as well as higher levels.\n\n The National Council for Teacher Education is the authority that regulates teaching courses in India including B.Ed courses.\n\nB.Ed course duration is of two-year which is based on employment as a teacher for primary, secondary, or senior secondary levels in a school.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("On completing a B.Ed course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("Top Recruiters or Core Companies to hire LLB graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 1 LPA and 20 LPA based on specialisation",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
