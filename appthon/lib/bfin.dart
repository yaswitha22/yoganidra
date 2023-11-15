import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class bfin extends StatefulWidget {
  const bfin({super.key});

  @override
  State<bfin> createState() => _bfinState();
}

class _bfinState extends State<bfin> {
  final List<ListItemModel> _data = [
    ListItemModel(label: "Financial Accounting",),
    ListItemModel(label: "Managerial Accounting",),
    ListItemModel(label: "Corporate Finance",),
    ListItemModel(label: "Financial Markets and Institutions",),
    ListItemModel(label: "Business Statistics",),
  ];
  final List<ListItemModel> data=[
    ListItemModel(label: "Derivatives and Risk Management"),
    ListItemModel(label: "Behavioral Finance"),
    ListItemModel(label: "Real Estate Finance"),
    ListItemModel(label: "Professional Ethics in Finance"),
    ListItemModel(label: "Business Core Courses")
  ];
  final List<ListItemModel> fl=[
    ListItemModel(label: "Business Analystt"),
    ListItemModel(label: "Finance Manager"),
    ListItemModel(label: "Operations Manager"),
    ListItemModel(label: "Bank Manager"),
    ListItemModel(label: "Relationship Manager"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "HSBC"),
    ListItemModel(label: "ICICI Bank"),
    ListItemModel(label: "HDFC"),
    ListItemModel(label: "Morgan Stanley"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("B.Fin",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 150,
                    width: 300,
                    color: Colors.black,
                    child:  Image(image: NetworkImage("https://www.bachelor-and-more.de/fileadmin/user_upload/Studiengaenge/Wirtschaft_und_Management/Bachelor_Finance_750x334.jpg"),fit: BoxFit.cover,)),
              ),
              SizedBox(height: 20,),
              Text("B.Fin-(Bachelor of Finance):",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("A Bachelor of Finance (B.Fin or BBA in Finance) is an undergraduate degree program that focuses on providing students with a comprehensive understanding of financial principles, markets, and management.\n\nThe program aims to equip students with the knowledge and skills needed to pursue careers in the finance industry. ",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Core Courses:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink),),
              SizedBox(height: 10,),
              FlutterBulletList(
                data: _data,
                textStyle: TextStyle(fontSize: 18),
                bulletSize: 2,
                bulletType: BulletType.square,
              ),
              SizedBox(height: 20,),
              Text("Professional Development and Elective Courses:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink)),
              SizedBox(height: 10,),
              FlutterBulletList(data: data,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities:",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.pink)),
              SizedBox(height: 10,),
              Text("Depending on your skills and academic records, you can easily get a perfect job profile in a core company of your field.\n\nSome of the job profiles that you can opt for after completing the B.Fin are listed as follows:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: fl,bulletType: BulletType.square,bulletSize: 1,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("A few companies that recruit B.Com graduates regularly are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,bulletSize: 2,textStyle: TextStyle(fontSize: 18),bulletType: BulletType.square,),
              SizedBox(height: 10,),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 6 LPA and 12 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
