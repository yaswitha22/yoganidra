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
        title: Center(child: Text("B.E",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
              Text("B.E-(Bachelor of Engineering):",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("A Bachelor of Engineering (B.E.) program typically offers a variety of courses across different engineering disciplines. These academic programs are 4 years long. The course content is technical in nature. The academic program consists of classroom lectures and practical Sessions.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Core Courses:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink),),
              SizedBox(height: 10,),
              FlutterBulletList(
                data: _data,
                textStyle: TextStyle(fontSize: 18),
                bulletSize: 2,
                bulletType: BulletType.square,
              ),
              SizedBox(height: 20,),
              Text("Professional Development and Elective Courses:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink)),
              SizedBox(height: 10,),
              FlutterBulletList(data: data,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18),),
              SizedBox(height: 10,),
              Text("Final year Project",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink)),
              SizedBox(height: 10,),
              Text("Most B.E. programs include a final year project where students work on a substantial engineering project under the guidance of faculty members.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink)),
              SizedBox(height: 10,),
              Text("After completing the BE, you can easily choose to work in a company related to your field. You can easily get a starting salary of 4.2-6.0 Lakhs in a reputed company. \n\nDepending on your skills and academic records, you can easily get a perfect job profile in a core company of your field.\n\nSome of the job profiles that you can opt for after completing the BE are listed as follows:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: fl,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("A few companies that recruit Engineering graduates regularly are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,bulletSize: 2,textStyle: TextStyle(fontSize: 18),bulletType: BulletType.square,)
              
            ],
          ),
        ),
      ),
    );
  }
}
