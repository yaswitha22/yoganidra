import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class llb extends StatefulWidget {
  const llb({super.key});

  @override
  State<llb> createState() => _llbState();
}

class _llbState extends State<llb> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Government Lawyer"),
    ListItemModel(label: "Legal Advisor"),
    ListItemModel(label: "Corporate Lawyer"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Trilegal"),
    ListItemModel(label: "Amarchand and Mangaldas and Suresh A Shroff Co."),
    ListItemModel(label: "S & R Associates"),
    ListItemModel(label: "Khaitan and Co"),
    ListItemModel(label: "Talwar Thakore and Associates"),
    ListItemModel(label: "Luthra and Luthra Law Offices"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Information analysis"),
    ListItemModel(label: "Communication Skills"),
    ListItemModel(label: "Perseverance"),
    ListItemModel(label: "Empathy"),
    ListItemModel(label: "Judgement skills"),
    ListItemModel(label: "Attention to Detail"),
    ListItemModel(label: "Decision making skills"),
    ListItemModel(label: "Research Skills")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("LLB",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
                        child: Image(image: NetworkImage("https://www.study-bridge.co.uk/wp-content/uploads/2017/09/LLB-Law.jpg"),
                            fit: BoxFit.cover)),
                  )
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("LLB or Bachelor of Legislative Law, is an undergraduate degree programme in Law, of three-year or five-year duration that can be pursued after graduation and 10+2 respectively.\n\nBachelor of Legislative Law is a foundational course in law that provides students the knowledge about legal procedures followed in the law profession.\n\nLLB course helps the students in developing a logical, analytical and critical understanding of legal affairs and teaches them how to use these skills for resolving social, legal issues of the society",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("On completing a LLB course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("Top Recruiters or Core Companies to hire LLB graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 4 LPA and 10 LPA based on specialisation",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
