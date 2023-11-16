import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class bba extends StatefulWidget {
  const bba({super.key});

  @override
  State<bba> createState() => _bbaState();
}

class _bbaState extends State<bba> {
  final List<ListItemModel> _data = [
    ListItemModel(label: "Finance",),
    ListItemModel(label: "Banking and Insurance",),
    ListItemModel(label: "Foreign Trade",),
    ListItemModel(label: "Logistics",),
  ];
  final List<ListItemModel> data=[
    ListItemModel(label: "Entrepreneurship and Innovation"),
    ListItemModel(label: "Business Etiquette and Professionalism"),
    ListItemModel(label: "Supply Chain Management"),
    ListItemModel(label: "Consumer Behavior"),
  ];
  final List<ListItemModel> fl=[
    ListItemModel(label: "Teacher"),
    ListItemModel(label: "Manager"),
    ListItemModel(label: "HR Manager"),
    ListItemModel(label: "Charted Accountant"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Google"),
    ListItemModel(label: "Delloite"),
    ListItemModel(label: "Nestle"),
    ListItemModel(label: "Flipkart"),
    ListItemModel(label: "Amazon")
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Decision-making skills",),
    ListItemModel(label: "Managerial skills",),
    ListItemModel(label: "Analytical Skills",),
    ListItemModel(label: "Decision-making skills"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BBA",style: TextStyle(fontSize: 25,color: Colors.white),)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.pinkAccent,Colors.deepPurple]
              )
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      height: 150,
                      width: 300,
                      color: Colors.black,
                      child:  Image(image: AssetImage('assets/bba1.jpg'),fit: BoxFit.cover,)),
                ),
              ),
              SizedBox(height: 20,),
              Text("BBA-(Bachelor of Business Administration):",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 20,),
              Container(
                  height: 130,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("BBA specialisation is available in accounting, finance management, cost and management accounting, human resource management, marketing, strategic management, entrepreneurship, hospitality, and tourism.",style: TextStyle(fontSize: 17,color: Colors.white),)),
                    ),
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 130,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("Bachelor of Business Administration degree or BBA online course is a three-year professional undergraduate course that is divided into six semesters and is open to candidates of science and commerce.",style: TextStyle(fontSize: 17,color: Colors.white),)),
                    ),
                  )),
              SizedBox(height: 20,),
              Text("Core Courses:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                height: 150,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: FlutterBulletList(
                      data: _data,
                      textStyle: TextStyle(fontSize: 18,color: Colors.white),
                      bulletSize: 2,
                      bulletType: BulletType.square,
                      bulletColor: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Professional Development and Elective Courses:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
              SizedBox(height: 10,),
              Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(child: FlutterBulletList(bulletColor:Colors.pinkAccent,data: data,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18,color: Colors.white),)),
                  )),
              SizedBox(height: 20,),
              Text("Skills Required:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(child: FlutterBulletList(data: skills,bulletColor:Colors.deepPurple,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18,color: Colors.white))),
                  )),
              SizedBox(height: 20,),
              Text("Career Oppurtunities:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink)),
              SizedBox(height: 10,),
              Text("Depending on your skills and academic records, you can easily get a perfect job profile in a core company of your field.\n\nSome of the job profiles that you can opt for after completing the BBA are listed as follows:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: fl,bulletType: BulletType.square,bulletSize: 1,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("A few companies that recruit BBA graduates regularly are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,bulletSize: 2,textStyle: TextStyle(fontSize: 18),bulletType: BulletType.square,),
              SizedBox(height: 10,),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 2 LPA and 11.5 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
