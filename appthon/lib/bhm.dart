import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class bhm extends StatefulWidget {
  const bhm({super.key});

  @override
  State<bhm> createState() => _bhmState();
}

class _bhmState extends State<bhm> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Hotel Manager"),
    ListItemModel(label: "Event Manager"),
    ListItemModel(label: "Flight Attendant"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "The Park Hotels"),
    ListItemModel(label: "JW Marriott"),
    ListItemModel(label: "ITC"),
    ListItemModel(label: "Oberoi Group of Hotels"),
    ListItemModel(label: "Praxis Services"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Customer Service skills"),
    ListItemModel(label: "Ability to Multitask"),
    ListItemModel(label: "Leadership Ability"),
    ListItemModel(label: "Cultural Awareness"),
    ListItemModel(label: "Managerial Skills"),
    ListItemModel(label: "Communication Skills"),
    ListItemModel(label: "Leadership Ability")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BHM",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
                        child: Image(image: AssetImage('assets/bhm1.jpg'), fit: BoxFit.cover)),
                  )
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("BHM full form is Bachelor of Hotel Management, and BHM course duration is four academic years.\n\nTo provide students with comprehensive knowledge of the hotel and hospitality industry.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("On completing a BHM course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("Top Recruiters or Core companies to hire BHM graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 2.5 LPA and 6 LPA based on specialisation",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
