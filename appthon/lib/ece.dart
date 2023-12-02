import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class ece extends StatefulWidget {
  const ece({super.key});

  @override
  State<ece> createState() => _eceState();
}

class _eceState extends State<ece> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Electronics Engineer"),
    ListItemModel(label: "Field Test Engineer"),
    ListItemModel(label: "Network Planning Engineer"),
    ListItemModel(label: "Electronics and Communications Consultant"),
    ListItemModel(label: "Customer Support Engineer"),
    ListItemModel(label: "Electronics Technician"),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Philips Electronics"),
    ListItemModel(label: "Conexant and Flextronics"),
    ListItemModel(label: "Siemens"),
    ListItemModel(label: "nVIDIA"),
    ListItemModel(label: "Motorola"),
    ListItemModel(label: "BEL"),
    ListItemModel(label: "DMRC"),
    ListItemModel(label: "Intel"),
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Circuit Analysis and Design"),
    ListItemModel(label: "Signal Processing"),
    ListItemModel(label: "Digital Systems and Logic Design"),
    ListItemModel(label: "Analog and Digital Signal Processing",),
    ListItemModel(label: "VLSI Design"),
    ListItemModel(label: "Programming Languages:",
      data: [
        ListItemModel(label: "C"),
        ListItemModel(label: "C++"),
        ListItemModel(label: "Python"),
      ]
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ECE",style: TextStyle(fontSize: 25,color: Colors.white),)),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.pinkAccent,Colors.deepPurple]
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
                      child: Image(image: AssetImage('assets/ece.jpg'),fit: BoxFit.cover,)),
                ),
              ),
              SizedBox(height: 20,),
              Text("About Course:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 130,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(child: Text("“Electronics and Communication Engineering” is one of the fastest growing field of engineering courses. It involves the transmission of information across the channel.",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  )),
              SizedBox(height: 10,),
              Container(
                  height: 120,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(child: Text("Electronics and Communication Engineering deals with the electronic devices and software applications. It is an interface of chip level hardware and information technology.",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  )),
              SizedBox(height: 10,),
              Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(child: Text("The basic study of ECE is just as the electronics engineering, and communication engineering is an additional field in electronics engineering.At that time the Electronics and Communication Engineering was known as the Radio Engineering.",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  )),
              SizedBox(height: 20,),
              Text("Career Oppurtunities:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 230,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Some job titles are listed here:",style: TextStyle(fontSize: 17,color: Colors.white),),
                        SizedBox(height: 10,),
                        FlutterBulletList(data: _data,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16,color: Colors.white),bulletColor: Colors.white,),
                      ],
                    ),
                  )),
              SizedBox(height: 20,),
              Text("Skills Required:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                  height: 280,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: FlutterBulletList(data: skills,bulletSize: 1,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16,color: Colors.white),bulletColor: Colors.white,)),
                  )),
              SizedBox(height: 20,),
              Text("Core companies to hire ECE graduates:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Container(
                  height: 250,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(child: FlutterBulletList(data: comp,bulletSize: 1,bulletType: BulletType.square,bulletColor:Colors.white,textStyle: TextStyle(fontSize: 16,color: Colors.white))),
                  )),
              SizedBox(height: 20,),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Container(
                  height:50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepPurple,),
                  child: Center(child: Text("Between 3.5 LPA and 4.5 LPA",style: TextStyle(fontSize: 17,color: Colors.white),)))
            ],
          ),
        ),
      ),
    );
  }
}
