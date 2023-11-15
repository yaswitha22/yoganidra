import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class bem extends StatefulWidget {
  const bem({super.key});

  @override
  State<bem> createState() => _bemState();
}

class _bemState extends State<bem> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Corporate event manager"),
    ListItemModel(label: "Sales director"),
    ListItemModel(label: "Wedding planner"),
    ListItemModel(label: "Event marketing manager"),
    ListItemModel(label: "Tourism manager"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Wizcraft"),
    ListItemModel(label: "Lakme"),
    ListItemModel(label: "CNBC TV"),
    ListItemModel(label: "Ogilvy"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Teamwork and Collaboration"),
    ListItemModel(label: "Communication Skills"),
    ListItemModel(label: "Critical Thinking"),
    ListItemModel(label: "Leadership skills"),
    ListItemModel(label: "Adaptability"),
    ListItemModel(label: "Time Management"),
    ListItemModel(label: "Decison Making"),
    ListItemModel(label: "problem solving")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BEM",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
                        child: Image(image: NetworkImage("https://www.digiomg.com/wp-content/uploads/2022/04/BEM-Course-640x334.jpg"),
                            fit: BoxFit.cover)),
                  )
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("Bachelor of Event Management is the process of planning of project management to design and establishment of small and large-scale personal or organizational activities such as concerts, conventions, ceremonies, weddings\n\nSubsequently, at the master's level, applicants can pursue elaborate programs in the field of event management specialization.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("On completing a BEM course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Core companies to hire BEM graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 5 LPA and 12 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
