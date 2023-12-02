import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class cse extends StatefulWidget {
  const cse({super.key});

  @override
  State<cse> createState() => _cseState();
}

class _cseState extends State<cse> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "AI Engineering"),
    ListItemModel(label: "Information security analyst"),
    ListItemModel(label: "Computer science teacher"),
    ListItemModel(label: "IT project manager"),
    ListItemModel(label: "Software developer"),
    ListItemModel(label: "Computer programmer"),
    ListItemModel(label: "Network systems administrator"),
    ListItemModel(label: "Hardware engineer"),
    ListItemModel(label: "Video game designer"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "IBM"),
    ListItemModel(label: " Microsoft"),
    ListItemModel(label: "Google"),
    ListItemModel(label: "Amazon"),
    ListItemModel(label: "Oracle"),
    ListItemModel(label: "TCS"),
    ListItemModel(label: "Tech Mahindra"),
    ListItemModel(label: "Facebook"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Programming skills"),
    ListItemModel(label: "Knowledge of software development"),
    ListItemModel(label: "Coding languages:",
        data: [
          ListItemModel(label: "Python"),
          ListItemModel(label: "Java"),
          ListItemModel(label: "Java Script"),
        ]),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("CSE",style: TextStyle(fontSize: 25,color: Colors.white),)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.deepPurple,Colors.pinkAccent]
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
                      child: Image(image: AssetImage('assets/cse.jpg'),fit: BoxFit.cover,)),
                ),
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 160,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Center(child: Text("Computer science is the study of computer hardware and software. When you enroll in a degree program, you can choose from many specialized areas of study, from artificial intelligence and cryptography to computer engineering and software development.",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  )),
              SizedBox(height: 20,),
              Container(
                  height: 110,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Center(child: Text("Computer science graduates work in various settings, including computer software companies, game development, financial services, and government.\n\nThey also work in research and for social media companies and manufacturers, to name a few. ",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  )),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 390,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(child: Column(
                      children: [
                        Text("Computer hardware and software engineers are among the customary positions for computer scientists. You may also find yourself working in other fields, such as: ",style: TextStyle(fontSize: 17,color: Colors.white),),
                        SizedBox(height: 10,),
                        Container(
                            height: 270,
                            width: 600,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: FlutterBulletList(data: _data,bulletSize: 2,bulletType: BulletType.square,bulletColor:Colors.white,textStyle: TextStyle(fontSize: 16,color: Colors.white)),
                            )),
                      ],
                    )),
                  )),

              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 190,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: FlutterBulletList(data: skills,bulletSize: 2,bulletType: BulletType.square,bulletColor: Colors.white,textStyle: TextStyle(fontSize: 16,color: Colors.white)),
                  )),
              SizedBox(height: 10,),
              Text("Core Companies to hire CSE graduates:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Container(
                  height: 240,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: FlutterBulletList(data: comp,bulletSize: 2,bulletColor: Colors.deepPurple,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16,color: Colors.white)),
                  )),
              SizedBox(height: 10,),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Container(
                  height:50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepPurple,),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(child: Text("Between 3 LPA and 8 LPA",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
