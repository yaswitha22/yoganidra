import 'package:flutter/material.dart';
class btech extends StatefulWidget {
  const btech({super.key});

  @override
  State<btech> createState() => _btechState();
}

class _btechState extends State<btech> {
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
              Text("B.TECH-(Bachelor of Technology):",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("The B.Tech program usually spans four years, with each year divided into semesters. B.Tech programs typically focus on engineering and technology disciplines. ",style: TextStyle(fontSize: 17,color: Colors.black),),

            ],
          ),
        ),
      ),
    );
  }
}
