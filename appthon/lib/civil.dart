import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class civil extends StatefulWidget {
  const civil({super.key});

  @override
  State<civil> createState() => _civilState();
}

class _civilState extends State<civil> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Civil Engineer"),
    ListItemModel(label: "Structural Engineer"),
    ListItemModel(label: "Site Engineers"),
    ListItemModel(label: "Construction Engineers"),
    ListItemModel(label: "Civil Engineering Technicians"),
    ListItemModel(label: "Transportation Engineer"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Bechtel Corporation"),
    ListItemModel(label: "Jacobs Engineering Group"),
    ListItemModel(label: "Fluor Corporation"),
    ListItemModel(label: "Skanska"),
    ListItemModel(label: "WSP Global"),
    ListItemModel(label: "Mott MacDonald"),
    ListItemModel(label: "GHD Group"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Team Player"),
    ListItemModel(label: "Time Management"),
    ListItemModel(label: "Creativity"),
    ListItemModel(label: "Leadership Skills",),
    ListItemModel(label: "Problem solver"),
    ListItemModel(label: "Critical Thinking",),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("CIVIL",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
                      child: Image(image: NetworkImage("https://www.latrobe.edu.au/courses/images/LTU_ME_33123_1440.jpg/1680.jpg"),fit: BoxFit.cover,)),
                ),
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("Civil engineering is a STEM field focused on designing and constructing the environments in which humans live. Civil engineers typically focus on large construction projects such as buildings, roads, bridges, subway systems, dams, and water supply networks.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              Text("As with any engineering field, civil engineering relies heavily on math and physics. Civil engineers need to be able to calculate the stresses on a structure to make sure it is engineered to avoid mechanical failure.\n\nMost building projects also require an engineer to understand design and the properties of materials. Successful civil engineers often oversee large aspects of a building project, so financial and leadership skills are also a must, as are strong writing and speaking skills.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("Some job titles are listed here:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              SizedBox(height: 10,),
              Text("Core companies to hire CIVIL graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 3 LPA and 4.9 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
