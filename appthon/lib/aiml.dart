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
        title: Center(child: Text("AIML",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
                    child: Image(image: NetworkImage("https://dtmvamahs40ux.cloudfront.net/gl-academy/course/course-682-AIML.jpg"))),
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("Artificial Intelligence and Machine Learning is a branch of study that includes theories, standards, methods and innovations of various different domains like mathematics, cognitive science, electronics and embedded systems to make intelligent systems that mimic human behaviour.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              Text("Artificial Intelligence and Machine Learning focus on collecting, categorizing, analyzing and interpreting data.\n\nIt is a specialised branch that deals with the development of embedded systems like robotics and IoT based applications.\n\nIt also incorporates the concepts of machine learning and deep learning model building for solving various computational and real-world business problems",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("Some of the top career options that reputed companies hire after AIML degree include the following job role positions:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              SizedBox(height: 10,),
              Text("Core companies to hire AIML graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 10 LPA and 15 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
