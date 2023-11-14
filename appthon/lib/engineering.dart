import 'package:appthon/be.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';

import 'btech.dart';
class engineering extends StatefulWidget {
  const engineering({super.key});

  @override
  State<engineering> createState() => _engineeringState();
}

class _engineeringState extends State<engineering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Engineering",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("ENGINEERING",style: TextStyle(fontSize: 35,color: Colors.red,fontWeight: FontWeight.bold),)),
              SizedBox(width: 10,),
              Center(child: Text("(B.E. or B.TECH) Courses",style: TextStyle(fontSize: 30,color: Colors.orange,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
              Card(
                  color: Colors.blue,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>be()));
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Image(image: NetworkImage("https://cache.careers360.mobi/media/presets/860X430/presets/860X429/article_images/2020/3/2/Bachelor-Of-Engineering-Course.jpg")),
                            SizedBox(height: 20,),
                            Text("B.E",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.green,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>btech()));
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Image(image: NetworkImage("https://static.janbharattimes.com/wp-content/uploads/2021/07/B.Tech-Course.jpg")),
                            SizedBox(height: 20,),
                            Text("B.TECH",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.yellow,
                child: InkWell(
                  onTap: (){},
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image(image: NetworkImage("https://medhigh.com/wp-content/uploads/2015/12/02-600x-820x400.jpg")),
                          SizedBox(height: 20,),
                          Text("Common Entrance Exams",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
