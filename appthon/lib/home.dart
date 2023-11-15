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
    Category("Engineering", Colors.blue,"https://cdn.pixabay.com/photo/2017/03/23/09/34/artificial-intelligence-2167835_1280.jpg"),
    Category("Commerce", Colors.green,"https://www.advictoriamsolutions.com/wp-content/uploads/2020/03/B2B-Commerce-Salesforce.jpg"),
    Category("Arts", Colors.orange,"https://cdn.pixabay.com/photo/2016/11/23/00/37/art-1851483_1280.jpg"),
    Category("Science", Colors.purple,"https://www.rmit.edu.au/content/dam/rmit/au/en/study-with-us/interest-areas/thumbnails/science-study-area-1220x732.jpg"),
    Category("Medical", Colors.red,"https://www.offtocollege.com/collegejournal/wp-content/uploads/2020/05/medicalfield.jpg"),
    Category("Business", Colors.teal,"http://boarddeveloper.com/wp-content/uploads/2015/03/Business-Consulting.jpg"),
    Category("Legal Studies", Colors.indigo,"https://www.utm.edu/news/wp-content/uploads/2019/02/LegalStudiesOption.jpg"),
    Category("Hospitality and Tourism", Colors.yellow,"https://i.pinimg.com/originals/79/2b/e3/792be39f0d3e75cc2a8849e1ef05864b.jpg"),
    Category("Social Sciences", Colors.pinkAccent,"https://leverageedu.com/blog/wp-content/uploads/2020/08/Branches-of-Social-Sciences-1.png"),
    Category("Education", Colors.brown,"https://images.edexlive.com/uploads/user/imagelibrary/2020/10/1/original/karnataka_teacher.jpg"),
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 20,
        shadowColor: Colors.black,
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(child: Image(image: NetworkImage(categories[index].imgpath)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    categories[index].name, style: TextStyle(color: Colors.black, fontSize: 18.7, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
            ],),),),),);
        },),
        );
  }
}
class Category {
  final String name;
  final Color color;
  final String imgpath;
  Category(this.name, this.color,this.imgpath);
}
