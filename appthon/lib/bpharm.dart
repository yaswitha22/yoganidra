import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class bpharm extends StatefulWidget {
  const bpharm({super.key});

  @override
  State<bpharm> createState() => _bpharmState();
}

class _bpharmState extends State<bpharm> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Drug Inspector"),
    ListItemModel(label: "Health Inspector"),
    ListItemModel(label: "Pharmacist"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Glenmark Pharmaceuticals"),
    ListItemModel(label: "GlaxoSmithKline"),
    ListItemModel(label: "Johnson & Johnson"),
    ListItemModel(label: "Torrent Pharmaceuticals"),
    ListItemModel(label: "Sun Pharmaceutical Ltd"),
    ListItemModel(label: "Novartis"),
    ListItemModel(label: "Cipla"),
    ListItemModel(label: "Zydus Cadila"),
    ListItemModel(label: "Aurobindo Pharma.")
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Communication Skills"),
    ListItemModel(label: "Reading skills"),
    ListItemModel(label: "Monitoring skills"),
    ListItemModel(label: "Managerial skill"),
    ListItemModel(label: "Leadership quality"),
    ListItemModel(label: "Good in ethics"),
    ListItemModel(label: "Analytical mind"),
    ListItemModel(label: "Multitasking"),
    ListItemModel(label: "Accuracy"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("B.Pharm",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                        height: 150,
                        width: 300,
                        color: Colors.black,
                        child: Image(image: AssetImage('assets/bpharm1.jpg'),
                            fit: BoxFit.cover)),
                  )
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("B Pharma or Bachelor of Pharmacy is an undergraduate degree programme in the field of pharmacy. B Pharma course duration is four years which is divided into eight semesters, two semesters in each year.\n\nBachelor of Pharmacy is the study of pharmaceutical science subjects such as drug safety, discovery, medical chemistry, industrial pharmacy, and several other subjects.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("On completing a B.Pharm course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,spaceBetweenItem:15,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("Core companies to hire B.Pharm graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 2 LPA and 12 LPA",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
