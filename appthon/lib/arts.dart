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
                  colors: [Colors.blueGrey,Colors.black]
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
              Center(child: Text("ARTS",style: TextStyle(fontSize: 35,color: Colors.red,fontWeight: FontWeight.bold),)),
              SizedBox(width: 10,),
              Center(child: Text("(B.A) Courses",style: TextStyle(fontSize: 30,color: Colors.orange,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
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
                          ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: NetworkImage("https://i.pinimg.com/originals/40/18/29/401829048cee47688a5a741f542eba1d.jpg")))),
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
                            ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: NetworkImage("https://medhigh.com/wp-content/uploads/2015/12/02-600x-820x400.jpg")))),
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
