import 'package:flutter/material.dart';
import 'artsexam.dart';
import 'ba.dart';
class arts extends StatefulWidget {
  const arts({super.key});

  @override
  State<arts> createState() => _artsState();
}

class _artsState extends State<arts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Arts",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Colors.blue,
                elevation: 10,
                shadowColor: Colors.black87,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ba()));
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: AssetImage('assets/ba.jpg')))),
                          SizedBox(height: 20,),
                          Text("B.A",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 10,
                  shadowColor: Colors.black87,
                  color: Colors.pinkAccent,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>artsexam()));
                    },
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image:AssetImage('assets/exam.jpg')))),
                            SizedBox(height: 20,),
                            Text("Common Entrance Exams",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(height: 20,)
                          ],
                        ),
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
