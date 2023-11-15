import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class mbbs extends StatefulWidget {
  const mbbs({super.key});

  @override
  State<mbbs> createState() => _mbbsState();
}

class _mbbsState extends State<mbbs> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Doctor"),
    ListItemModel(label: "Medical Officers"),
    ListItemModel(label: "Surgeon"),
    ListItemModel(label: "Paediatrician"),
    ListItemModel(label: "General Physician"),

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
        title: Center(child: Text("MBBS",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
              Text("MBBS or Bachelor of Medicine and Bachelor of Surgery is also described as BMBS, which is an abbreviation of the Latin word, Medicinae Baccalaureus Baccalaureus Chirurgiae.\n\nBachelor of Medicine and Bachelor of Surgery or MBBS is an undergraduate degree programme in the field of Medicine and Surgery.\n\nMBBS is probably one of the topmost degrees in the world and therefore by profession, after completing an MBBS from top medical colleges, an individual is officially transformed into a medical professional.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("On completing a MBBS course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("Core companies to hire MBBS graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
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
