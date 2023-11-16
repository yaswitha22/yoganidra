import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class it extends StatefulWidget {
  const it({super.key});

  @override
  State<it> createState() => _itState();
}

class _itState extends State<it> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Software Developers"),
    ListItemModel(label: "Technical Trainers"),
    ListItemModel(label: "Project Leaders"),
    ListItemModel(label: "IT System Managers"),
    ListItemModel(label: "Data Administrators"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Deloitte"),
    ListItemModel(label: "Robert Bosch"),
    ListItemModel(label: "Capgemini"),
    ListItemModel(label: "Infosys"),
    ListItemModel(label: "Accenture"),
    ListItemModel(label: "TCS"),
    ListItemModel(label: "Cognizant"),
    ListItemModel(label: "LnT Infotech"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Organisation skills"),
    ListItemModel(label: "Communication Skills"),
    ListItemModel(label: "Problem solving skills"),
    ListItemModel(label: "Research skills"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("IT",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
                      child: Image(image: AssetImage('assets/it.jpg'),fit: BoxFit.cover,)),
                ),
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("Information technology as a course deals with the computer system and its functions. Students who are interested in learning about computer technology, software applications, and hardware components can enroll in courses in information technology.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Students pursuing the courses in information technology course will learn various topics related to programming languages, database management, cyber security, and web designing.\n\nInformation technology is helpful for the students to get jobs in the IT industry. ",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("IT Technology is a booming sector in the present generation. Candidates after completing courses in Information Technology (IT) will have numerous opportunities in the IT industry. One can opt to work in different roles such as:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              SizedBox(height: 10,),
              Text("Core companies to hire CSE graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 4.8 LPA and 10 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
