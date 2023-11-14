import 'package:appthon/bem.dart';
import 'package:appthon/bhm.dart';
import 'package:appthon/handtexam.dart';
import 'package:flutter/material.dart';
class hospandtour extends StatefulWidget {
  const hospandtour({super.key});

  @override
  State<hospandtour> createState() => _hospandtourState();
}

class _hospandtourState extends State<hospandtour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hospitality and Tourism",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
              Center(child: Text("HOSPITALITY AND TOURISM",style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),)),
              SizedBox(width: 15,),
              Center(child: Text("(BEM and BHM ) Course",style: TextStyle(fontSize: 30,color: Colors.orange,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
              Card(
                elevation: 10,
                shadowColor: Colors.black87,
                color: Colors.green,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>bem()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image(image: NetworkImage("https://res.cloudinary.com/iubh/image/upload/q_auto:eco/f_auto,w_iw,c_fill,g_face,ar_16:9/v1602830620/04%20-%20Karriere/Bachelor/Eventmanagement/2010-eventmanagement-karriere-1_i1olol.jpg")),
                          SizedBox(height: 20,),
                          Text("BEM",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
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
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>bhm()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image(image: NetworkImage("http://www.plic.edu.np/sites/default/files/images/courses/plic_hotel_management.jpg")),
                          SizedBox(height: 20,),
                          Text("BHM",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
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
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>handtexam()));
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
