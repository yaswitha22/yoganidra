import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class bsc extends StatefulWidget {
  const bsc({super.key});

  @override
  State<bsc> createState() => _bscState();
}

class _bscState extends State<bsc> {
  final List<ListItemModel> _data = [
    ListItemModel(label: "Mathematics",),
    ListItemModel(label: "Physics",),
    ListItemModel(label: "Chemistry",),
    ListItemModel(label: "Geology",),
    ListItemModel(label: "Biology",),
    ListItemModel(label: "Computer Science",),
  ];
  final List<ListItemModel> data=[
    ListItemModel(label: "International Taxation (INTT)"),
    ListItemModel(label: "Indirect Tax Laws (IDTL)"),
    ListItemModel(label: "Financial Services and Capital Markets (FSCM)"),
    ListItemModel(label: "Enterprise Risk Management (ERM)"),
  ];
  final List<ListItemModel> fl=[
    ListItemModel(label: "Teacher"),
    ListItemModel(label: "Counselor"),
    ListItemModel(label: "Pharmacist"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Google"),
    ListItemModel(label: "Glenmark Pharmaceuticals"),
    ListItemModel(label: "Infosys"),
    ListItemModel(label: " L & T Infotech")
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Observation Skills",),
    ListItemModel(label: "Scientific Skills",),
    ListItemModel(label: "Analytical Skills",),
    ListItemModel(label: "Research Skills"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("B.Sc",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                    height: 150,
                    width: 300,
                    color: Colors.black,
                    child:  Image(image: NetworkImage("https://livenewspot.com/wp-content/uploads/2020/06/B.Sc-course.jpg"),fit: BoxFit.cover,)),
              ),
              SizedBox(height: 20,),
              Text("B.Sc-(Bachelor of Science):",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("It is a three-year-long undergraduate degree programme. A Bachelor of Science or BSc degree is awarded to candidates in the field of science.\n\nBSc degree programmes are offered by various universities and colleges and are designed to provide students with comprehensive knowledge of mathematics, sciences, engineering, technology, and computer science.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Core Courses:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink),),
              SizedBox(height: 10,),
              FlutterBulletList(
                data: _data,
                textStyle: TextStyle(fontSize: 18),
                bulletSize: 1,
                bulletType: BulletType.square,
              ),
              SizedBox(height: 20,),
              Text("Professional Development and Elective Courses:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink)),
              SizedBox(height: 10,),
              FlutterBulletList(data: data,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18),),
              SizedBox(height: 20,),
              Text("Skills Required:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Career Oppurtunities:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink)),
              SizedBox(height: 10,),
              Text("Depending on your skills and academic records, you can easily get a perfect job profile in a core company of your field.\n\nSome of the job profiles that you can opt for after completing the B.Sc are listed as follows:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: fl,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("A few companies that recruit B.Sc graduates regularly are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,bulletSize: 1,textStyle: TextStyle(fontSize: 18),bulletType: BulletType.square,),
              SizedBox(height: 10,),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 2 LPA and 5 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
