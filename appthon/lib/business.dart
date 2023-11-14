import 'package:appthon/bba.dart';
import 'package:appthon/bbm.dart';
import 'package:flutter/material.dart';

import 'businessexam.dart';
class business extends StatefulWidget {
  const business({super.key});

  @override
  State<business> createState() => _businessState();
}

class _businessState extends State<business> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Business",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
              Center(child: Text("BUSINESS",style: TextStyle(fontSize: 35,color: Colors.red,fontWeight: FontWeight.bold),)),
              SizedBox(width: 10,),
              Center(child: Text("(BBA or BBM) Courses",style: TextStyle(fontSize: 30,color: Colors.orange,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
              Card(
                color: Colors.blue,
                elevation: 20,
                shadowColor: Colors.black87,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>bba()));
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image(image: NetworkImage("http://web.archive.org/web/20200128182344im_/http://www.projectsjugaad.com/wp-content/uploads/2019/06/33093501_431596763931874_5028780488794308608_n.jpg")),
                          SizedBox(height: 20,),
                          Text("BBA",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                elevation: 10,
                shadowColor: Colors.black87,
                color: Colors.pinkAccent,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>bbm()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image(image: NetworkImage("https://www.coursesxpert.com/wp-content/uploads/2021/01/BBM-Course.jpg")),
                          SizedBox(height: 20,),
                          Text("BBM",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                elevation: 10,
                shadowColor: Colors.black87,
                color: Colors.yellow,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>businessexam()));
                  },
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
