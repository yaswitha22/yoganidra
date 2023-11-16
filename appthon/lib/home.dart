import 'package:appthon/profile.dart';
import 'package:appthon/sciences.dart';
import 'package:appthon/social.dart';
import 'package:flutter/material.dart';
import 'arts.dart';
import 'business.dart';
import 'commerce.dart';
import 'education.dart';
import 'engineering.dart';
import 'handt.dart';
import 'legal.dart';
import 'medical.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int index=0;
  final List<Category> categories = [
    Category("Engineering", Colors.blue,"assets/engineering.jpg"),
    Category("Commerce", Colors.green,"assets/commerce.jpg"),
    Category("Arts", Colors.orange,"assets/arts.jpg"),
    Category("Science", Colors.purple,"assets/science.jpg"),
    Category("Medical", Colors.red,"assets/medical.jpg"),
    Category("Business", Colors.teal,"assets/business.jpg"),
    Category("Legal Studies", Colors.indigo,"assets/legalstudies.jpg"),
    Category("Hospitality and Tourism", Colors.yellow,"assets/handt.jpg"),
    Category("Social Sciences", Colors.pinkAccent,"assets/social.jpg"),
    Category("Education", Colors.brown,"assets/education.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    final screens=[engineering(),commerce(),arts(),sciences(),medical(),business(),legalstudies(),hospandtour(),socialsci(),education()];
    return Scaffold(
        appBar: AppBar(
        title: Center(child: Text("STREAMS",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
        flexibleSpace: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.topRight,
        colors: [Colors.blueGrey, Colors.black])),),),
        body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: categories[index].color,
        child: InkWell(
          onTap:(){
            setState(() {
            });
            Navigator.push(context, MaterialPageRoute(builder: (context)=>screens[index]));
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ClipRRect(borderRadius: BorderRadius.circular(20),child: Container(child: Image(image: AssetImage(categories[index].imgpath),fit: BoxFit.fill,))),
                  SizedBox(height: 15,),
                  Text(
                    categories[index].name, style: TextStyle(color: Colors.black, fontSize: 18.7, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
            ],),),),),);
        },
        ),
        );
  }
}
class Category {
  final String name;
  final Color color;
  final String imgpath;
  Category(this.name, this.color,this.imgpath);
}
