import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class ca extends StatefulWidget {
  const ca({super.key});

  @override
  State<ca> createState() => _caState();
}

class _caState extends State<ca> {
  final List<ListItemModel> _data = [
    ListItemModel(label: "Principles of Accounting",),
    ListItemModel(label: "Business Correspondence and Reporting",),
    ListItemModel(label: "Business Mathematics and logical reasoning",),
    ListItemModel(label: "Business Laws",),
    ListItemModel(label: "Cost and management accounting",),
    ListItemModel(label: "Taxation",),
  ];
  final List<ListItemModel> data=[
    ListItemModel(label: "Risk Management and Financial Services (IRM)"),
    ListItemModel(label: "International Taxation (INTT)"),
    ListItemModel(label: "Indirect Tax Laws (IDTL)"),
    ListItemModel(label: "Global Financial Reporting Standards (GFRS)"),
    ListItemModel(label: "Enterprise Risk Management (ERM)")
  ];
  final List<ListItemModel> fl=[
    ListItemModel(label: "Accounts clerk"),
    ListItemModel(label: "chartered accountant"),
    ListItemModel(label: "cost accountants"),
    ListItemModel(label: "Financial Analyst"),
    ListItemModel(label: "business services"),
    ListItemModel(label: "accountants")
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Amazon.com Inc."),
    ListItemModel(label: "Tesla,Inc."),
    ListItemModel(label: "Alibaba Group Holding Limited"),
    ListItemModel(label: "Vodafone Group Plc")
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Analytical Skills",),
    ListItemModel(label: "Attention to details",),
    ListItemModel(label: "Concentration and focus",),
    ListItemModel(label: "Ethics and professionalism"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("C.A",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
              Center(
                child: Container(
                    height: 150,
                    width: 300,
                    color: Colors.black,
                    child:  Image(image: NetworkImage("https://spatulaproductions.com/wp-content/uploads/2019/07/chartered-accountants.jpg"),fit: BoxFit.cover,)),
              ),
              SizedBox(height: 20,),
              Text("C.A-(Charted Accountancy):",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Chartered accountancy revolves around the study of accounting and taxation procedures to be qualified as a professional who can take care of the accounting and the taxation for a business or a firm. ",style: TextStyle(fontSize: 17,color: Colors.black),),
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
              Text("Skills Required:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,bulletSize:2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Career Oppurtunities:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink)),
              SizedBox(height: 10,),
              Text("Depending on your skills and academic records, you can easily get a perfect job profile in a core company of your field.\n\nSome of the job profiles that you can opt for after completing the C.A are listed as follows:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: fl,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("A few companies that recruit C.A graduates regularly are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,bulletSize: 2,textStyle: TextStyle(fontSize: 18),bulletType: BulletType.square,),
              SizedBox(height: 10,),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 3 LPA and 18 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
