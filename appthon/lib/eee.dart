import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class eee extends StatefulWidget {
  const eee({super.key});

  @override
  State<eee> createState() => _eeeState();
}

class _eeeState extends State<eee> {
  final List<ListItemModel> _data = [
    ListItemModel(label: "Telecom industries"),
    ListItemModel(label: "Transportation network"),
    ListItemModel(label: "Airplane & airspace manufacturing industries"),
    ListItemModel(label: "Production and the distribution of power"),
    ListItemModel(label: "IT industries"),
  ];
  final List<ListItemModel> comp = [
    ListItemModel(label: "BHEL"),
    ListItemModel(label: "ISRO"),
    ListItemModel(label: "Durgapur steel plant"),
    ListItemModel(label: "Tata Steel & Power Limited"),
    ListItemModel(label: "Hindustan Motor"),
    ListItemModel(label: "Control and instrumentation engineer"),
    ListItemModel(label: "GAIL"),
    ListItemModel(label: "State Electricity Board"),
  ];
  final List<ListItemModel> skills = [
    ListItemModel(label: "Circuit Analysis and Design"),
    ListItemModel(label: "Communication Systems"),
    ListItemModel(label: "Digital Electronics"),
    ListItemModel(label: "Electrical Machines",),
    ListItemModel(label: "Renewable Energy Systems"),
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
        title: Center(child: Text(
          "EEE", style: TextStyle(fontSize: 25, color: Colors.white),)),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.blueGrey, Colors.black]
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
                      child: Image(
                        image: NetworkImage(
                            "https://tse2.mm.bing.net/th?id=OIP.ofitsh_DIb4R-ZsxIzH7gAHaFS&pid=Api&P=0&h=220"),
                        fit: BoxFit.cover,)),
                ),
              ),
              SizedBox(height: 20,),
              Text("About Course", style: TextStyle(fontSize: 20,
                  color: Colors.pink,
                  fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text(
                "Electrical & electronics engineering is an integrated branch of engineering. It also includes the concepts of power generation & distribution communication & machine control .\n\nThis course deals with the technological aspects of electricity, especially the design & application of circuitry & electronic equipment.",
                style: TextStyle(fontSize: 17, color: Colors.black),),
              SizedBox(height: 20,),
              Text(
                "The electrical & electronics engineering (EEE) involves with the power. It can be existed in various forms like turbine, hydro, gas, fuel cell, solar, wind or geothermal energy. It involves the use, storage and generation of the power and energy.", style: TextStyle(fontSize: 17, color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities", style: TextStyle(fontSize: 20,
                  color: Colors.pink,
                  fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("Some of the specific fields of career development are:",
                style: TextStyle(fontSize: 17, color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(
                data: _data, bulletSize: 1, bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              SizedBox(height: 20,),
              Text("Skills Required", style: TextStyle(fontSize: 20,
                  color: Colors.pink,
                  fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(
                data: skills, bulletSize: 1, bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              SizedBox(height: 10,),
              Text("Core companies to hire EEE graduates:", style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                  fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(
                data: comp, bulletSize: 1, bulletType: BulletType.square,textStyle: TextStyle(fontSize: 16)),
              Text("Average starting salary:", style: TextStyle(fontSize: 20,
                  color: Colors.pink,
                  fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 2.5 LPA and 5 LPA",
                style: TextStyle(fontSize: 17, color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
