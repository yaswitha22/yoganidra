import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class be extends StatefulWidget {
  const be({super.key});

  @override
  State<be> createState() => _beState();
}

class _beState extends State<be> {
  final List<ListItemModel> _data = [
    ListItemModel(
      label: "Engineering Mathematics:",
      data: [
        ListItemModel(label: "Calculus"),
        ListItemModel(label: "Differential Equations"),
        ListItemModel(label: "Linear Algebra"),
        ListItemModel(label: "Probability and Statistics")
      ],
    ),
    ListItemModel(
      label: "Engineering Physics:",
      data: [
        ListItemModel(label: "Mechanics"),
        ListItemModel(label: "Optics"),
        ListItemModel(label: "Thermodynamics")
      ],
    ),
    ListItemModel(
      label: "Engineering Chemistry:",
      data: [
        ListItemModel(label: "Inorganic Chemistry"),
        ListItemModel(label: "Organic Chemistry"),
        ListItemModel(label: "Physical Chemistry"),
      ],
    ),
    ListItemModel(
        label: "Engineering Mechanics:",
        data: [
          ListItemModel(label: "Statics"),
          ListItemModel(label: "Dynamics")
        ]),
    ListItemModel(
        label: "Introduction to Computing:",
        data: [
          ListItemModel(label: "Programming Fundamentals"),
          ListItemModel(label: "Data Structures and Algorithms"),
        ]
    ),
    ListItemModel(
        label: "Engineering Drawing and Graphics:",
        data: [
          ListItemModel(label: "CAD (Computer-Aided Design)")
        ]
    )
  ];
  final List<ListItemModel> data=[
    ListItemModel(label: "Engineering Ethics and Professionalism"),
    ListItemModel(label: "Project Management"),
    ListItemModel(label: "Technical Communication"),
    ListItemModel(label: "Engineering Economics and Cost Analysis"),
    ListItemModel(label: "Industrial Training or Internship")
  ];
  final List<ListItemModel> fl=[
    ListItemModel(label: "Design Engineer"),
    ListItemModel(label: "Quality Control Engineer"),
    ListItemModel(label: "Development Engineer"),
    ListItemModel(label: "Computer Architect"),
    ListItemModel(label: "Professor"),
    ListItemModel(label: "Computer Software Engineer")
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Infosys"),
    ListItemModel(label: "Accenture"),
    ListItemModel(label: "Tata Industries"),
    ListItemModel(label: "Reliance")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("B.E",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                        height: 150,
                        width: 300,
                        color: Colors.black,
                        child: Image(image: NetworkImage("https://www.aiming.in/wp-content/uploads/2017/08/BE-Courses-Details.jpg"),
                            fit: BoxFit.cover)),
                  )
              ),
              SizedBox(height: 20,),
              Text("B.E-(Bachelor of Engineering):",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold,)),
              SizedBox(height: 10,),
              Container(
                  height: 110,
                  width: 530,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(child: Text("A Bachelor of Engineering (B.E.) program typically offers a variety of courses across different engineering disciplines and these academic programs are 4 years long.",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 100,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("The course content is technical in nature. The academic program consists of classroom lectures and practical Sessions.",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  )),
              SizedBox(height: 20,),
              Text("Core Courses:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: 10,),
              Container(
                height: 650,
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Center(
                    child: FlutterBulletList(
                      data: _data,
                      textStyle: TextStyle(fontSize: 18,color: Colors.white),
                      bulletSize: 2,
                      bulletType: BulletType.square,
                      bulletColor: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Professional Development and Elective Courses:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
              SizedBox(height: 10,),
              Container(
                  height: 200,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Center(child: FlutterBulletList(data: data,bulletColor:Colors.pinkAccent,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18,color: Colors.white),)),
                  )),
              SizedBox(height: 10,),
              Text("Career Oppurtunities:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
              SizedBox(height: 10,),
              Container(
                  height: 300,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("Some of the job profiles that you can opt for after completing the BE are listed as follows:",style: TextStyle(fontSize: 17,color: Colors.white),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                              height: 200,
                              width: 600,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: FlutterBulletList(data: fl,bulletColor:Colors.pinkAccent,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 18,color: Colors.white)),
                              )),
                        ],
                      ),
                    ),
                  )),
              SizedBox(height: 10,),
              Container(
                  height: 260,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("A few companies that recruit Engineering graduates regularly are:",style: TextStyle(fontSize: 17,color: Colors.white),),
                      ),
                      SizedBox(height: 10,),
                      Container(
                          height: 160,
                          width: 600,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: FlutterBulletList(data: comp,bulletSize: 2,textStyle: TextStyle(fontSize: 18,color: Colors.white),bulletColor:Colors.deepPurple,bulletType: BulletType.square,)
                          )),
                    ],
                  ),
                ),
              )),
              SizedBox(height: 10,),
              Text("Average Starting Salary",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
              SizedBox(height: 10,),
              Container(
                  height:50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pinkAccent,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Between 4 LPA and 10 LPA",style: TextStyle(fontSize: 17,color: Colors.white),),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
