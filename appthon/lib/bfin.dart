import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class bfin extends StatefulWidget {
  const bfin({super.key});

  @override
  State<bfin> createState() => _bfinState();
}

class _bfinState extends State<bfin> {
  final List<ListItemModel> _data = [
    ListItemModel(label: "BCom-General",),
    ListItemModel(label: "BCom Honours",),
    ListItemModel(label: "BCom LLB",),
  ];
  final List<ListItemModel> data=[
    ListItemModel(label: "Advanced Financial Accounting"),
    ListItemModel(label: "Project Management"),
    ListItemModel(label: "Tax Planning and Management"),
    ListItemModel(label: "Financial Planning and Wealth Management"),
    ListItemModel(label: "Human Resource Management")
  ];
  final List<ListItemModel> fl=[
    ListItemModel(label: "Accountant"),
    ListItemModel(label: "Account Executive"),
    ListItemModel(label: "Business Executive"),
    ListItemModel(label: "Financial Analyst"),
    ListItemModel(label: "Tax Consultant"),
    ListItemModel(label: "Accounts Manager")
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "SBI"),
    ListItemModel(label: "ICICI Bank"),
    ListItemModel(label: "HDFC"),
    ListItemModel(label: "LIC")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("B.Com",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
              Text("B.Com-(Bachelor of Commerce):",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("B.Com is a three-year UG degree course recognised by the Universities Grants Commission (UGC).  Students can pursue B.Com programmes as full-time BCom, Distance BCom, or Online BCom.\n\nThe three-year BCom course is divided into six semesters. Students pursuing the course can choose elective subjects of their choice in some semesters.\n\nBCom Subjects include Financial Accounting, Business Laws, Economics, Taxation, Auditing, and Cost Accounting, among others. ",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Core Courses:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink),),
              SizedBox(height: 10,),
              FlutterBulletList(
                data: _data,
                textStyle: TextStyle(fontSize: 18),
                bulletSize: 1,
                bulletType: BulletType.square,
              ),
              SizedBox(height: 20,),
              Text("Professional Development and Elective Courses:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink)),
              SizedBox(height: 10,),
              FlutterBulletList(data: data,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink)),
              SizedBox(height: 10,),
              Text("Depending on your skills and academic records, you can easily get a perfect job profile in a core company of your field.\n\nSome of the job profiles that you can opt for after completing the BE are listed as follows:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: fl,bulletType: BulletType.square,bulletSize: 1,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("A few companies that recruit B.Com graduates regularly are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,bulletSize: 1,textStyle: TextStyle(fontSize: 18),bulletType: BulletType.square,),
              SizedBox(height: 10,),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 1.75 LPA and 9 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
