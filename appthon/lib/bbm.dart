import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class bbm extends StatefulWidget {
  const bbm({super.key});

  @override
  State<bbm> createState() => _bbmState();
}

class _bbmState extends State<bbm> {
  final List<ListItemModel> _data = [
    ListItemModel(label: "BBM in International Business",),
    ListItemModel(label: "BBM in Human Resource Management",),
    ListItemModel(label: "BBM in Marketing Management",),
  ];
  final List<ListItemModel> data=[
    ListItemModel(label: "Entrepreneurship and Small Business Management"),
    ListItemModel(label: "Financial Management"),
    ListItemModel(label: "Career Planning and Development"),
    ListItemModel(label: "Business Communication Skills"),
  ];
  final List<ListItemModel> fl=[
    ListItemModel(label: "Business Development Executive"),
    ListItemModel(label: "Business Application Manager"),
    ListItemModel(label: "Operations Manager"),
    ListItemModel(label: "Business Analyst"),

  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Google"),
    ListItemModel(label: "Accenture"),
    ListItemModel(label: "Infosys"),
    ListItemModel(label: "Cognizant"),
    ListItemModel(label: "Goldman")
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Communication Skills",),
    ListItemModel(label: "Logical Reasoning",),
    ListItemModel(label: "Analytical Skills",),
    ListItemModel(label: "Manegerial Skills"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BBM",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
                      width: 350,
                      color: Colors.black,
                      child:  Image(image: AssetImage('assets/bbm1.jpg'),fit: BoxFit.cover,)),
                ),
              ),
              SizedBox(height: 20,),
              Text("BBM-(Bachelor of Business Management):",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("It is an undergraduate degree programme where the students learn the principles of business management. The Bachelor of Business Management or BBM course is divided into six semesters in the time duration of three academic years.",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("The bachelor of business management degree is quite similar to BBA degree programme. Students who have basic knowledge of business and want to make a career in business can opt for Bachelor of Business Management or BBM course.",style: TextStyle(fontSize: 17,color: Colors.white),),
                  )),
              SizedBox(height: 20,),
              Text("Core Courses:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                height: 110,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlutterBulletList(
                      data: _data,
                      bulletColor: Colors.white,
                      textStyle: TextStyle(fontSize: 18,color: Colors.white),
                      bulletSize: 1,
                      bulletType: BulletType.square,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Professional Development and Elective Courses:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
              SizedBox(height: 10,),
              Container(
                  height: 180,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: FlutterBulletList(data: data,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18,color: Colors.white),bulletColor: Colors.white,),
                  )),
              SizedBox(height: 20,),
              Text("Skills Required:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 140,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: FlutterBulletList(data: skills,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18,color: Colors.white),bulletColor: Colors.white,)),
                  )),
              SizedBox(height: 20,),
              Text("Career Oppurtunities:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
              SizedBox(height: 10,),
              Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text("Depending on your skills and academic records, you can easily get a perfect job profile in a core company of your field.\n\nSome of the job profiles that you can opt for after completing the BBM are listed as follows:",style: TextStyle(fontSize: 17,color: Colors.white),),
                        SizedBox(height: 10,),
                        FlutterBulletList(data: fl,bulletType: BulletType.square,bulletColor:Colors.white,bulletSize: 2,textStyle: TextStyle(fontSize: 18,color: Colors.white)),
                        SizedBox(height: 10,),
                        Text("A few companies that recruit BBM graduates regularly are:",style: TextStyle(fontSize: 17,color: Colors.white),),
                        SizedBox(height: 10,),
                        FlutterBulletList(data: comp,bulletSize: 2,textStyle: TextStyle(fontSize: 18,color: Colors.white),bulletType: BulletType.square,bulletColor: Colors.white,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Container(
                  height:50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepPurple,),
                  child: Center(child: Text("Between 3 LPA and 15 LPA",style: TextStyle(fontSize: 17,color: Colors.white),)))
            ],
          ),
        ),
      ),
    );
  }
}
