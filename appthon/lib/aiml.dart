import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class aiml extends StatefulWidget {
  const aiml({super.key});

  @override
  State<aiml> createState() => _aimlState();
}

class _aimlState extends State<aiml> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Artificial Intelligence / Machine Learning Developer"),
    ListItemModel(label: "Lead Artificial Intelligence / Machine Learning Engineer"),
    ListItemModel(label: "Artificial Intelligence / Machine Learning Architect"),
    ListItemModel(label: "Data Scientist"),
    ListItemModel(label: "Research scientist"),
    ListItemModel(label: "Data Analyst"),
    ListItemModel(label: "Business Analyst"),
    ListItemModel(label: "NLP Engineer"),
    ListItemModel(label: "Business Intelligence Developer"),
    ListItemModel(label: "Full Stack ML Developer"),
    ListItemModel(label: "Product manager"),
    ListItemModel(label: "Software Architect")
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "IBM"),
    ListItemModel(label: " Microsoft"),
    ListItemModel(label: "Google"),
    ListItemModel(label: "Amazon"),
    ListItemModel(label: "Motorola"),
    ListItemModel(label: "Caterpillar"),
    ListItemModel(label: "Walmart Labs"),
    ListItemModel(label: "Facebook"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "programming skills",
      data: [
        ListItemModel(label: "Python"),
        ListItemModel(label: "R"),
      ]
    ),
    ListItemModel(label: "Mathematics and Statistics:",
      data:[
        ListItemModel(label: "Linear Algebra"),
        ListItemModel(label: "Calculus"),
        ListItemModel(label: "Probability and Statistics"),
      ]
    ),
    ListItemModel(label: "Machine Learning Libraries and Frameworks:",
        data: [
          ListItemModel(label: "TensorFlow"),
          ListItemModel(label: "PyTorch"),
          ListItemModel(label: "Scikit-Learn"),
        ]),
    ListItemModel(label: "Data Science and Analytics:",
        data: [
          ListItemModel(label: "Pandas"),
          ListItemModel(label: "NumPy"),
          ListItemModel(label: "Matplotlib and Seaborn"),
        ]),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("AIML",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
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
                      child: Container(child: Image(image: AssetImage('assets/aiml.jpg')))),
                ),
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              SizedBox(height: 10,),
              Container(
                  height: 140,
                  width: 500,
                  decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(child: Text("Artificial Intelligence and Machine Learning is a branch of study that includes theories and innovations of various different domains like mathematics, cognitive science,embedded systems to make intelligent systems that mimic human behaviour.",style: TextStyle(fontSize: 17,color: Colors.white),textAlign: TextAlign.center,))),
              SizedBox(height: 20,),
              Container(
                  height: 110,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(child: Text("It is a specialised branch that deals with the development of embedded systems like robotics and IoT based applications.",style: TextStyle(fontSize: 17,color: Colors.white),textAlign: TextAlign.center,))),
              SizedBox(height: 20,),
              Container(
                  height: 140,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(child: Text("Artificial Intelligence and Machine Learning focus on collecting, categorizing, analyzing and interpreting data.It is a specialised branch that deals with the development of embedded systems like robotics and IoT based applications.",style: TextStyle(fontSize: 17,color: Colors.white),textAlign: TextAlign.center,))),
              SizedBox(height: 20,),
              Container(
                  height: 100,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(child: Text("It also incorporates the concepts of machine learning and deep learning model building for solving various computational and real-world business problems",style: TextStyle(fontSize: 17,color: Colors.white),textAlign: TextAlign.center,))),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 100,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(child: Text("Some of the top career options that reputed companies hire after AIML degree include the following job role positions:",style: TextStyle(fontSize: 17,color: Colors.white),textAlign: TextAlign.center,))),
              SizedBox(height: 20,),
              Container(
                height: 440,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  color: Colors.deepPurple,),
                  child: Padding(
                    padding: EdgeInsets.all(14),
                      child: FlutterBulletList(data: _data,bulletSize: 2,bulletType: BulletType.square,bulletColor:Colors.pinkAccent,textStyle: TextStyle(fontSize: 18,color: Colors.white)))),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 480,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.pinkAccent,),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: FlutterBulletList(data: skills,bulletSize: 2,bulletType: BulletType.square,bulletColor:Colors.deepPurple,textStyle: TextStyle(fontSize: 18,color: Colors.white))),
                  )),
              SizedBox(height: 10,),
              Text("Core companies to hire AIML graduates:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Container(
                height: 275,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.deepPurple,),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(child: FlutterBulletList(data: comp,bulletSize: 2,bulletType: BulletType.square,bulletColor:Colors.pinkAccent,textStyle: TextStyle(fontSize: 18,color: Colors.white))),
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
                    color: Colors.pinkAccent,),
                  child: Center(child: Text("Between 10 LPA and 15 LPA",style: TextStyle(fontSize: 17,color: Colors.white),)))
            ],
          ),
        ),
      ),
    );
  }
}
