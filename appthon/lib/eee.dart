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
                  colors: [Colors.pinkAccent, Colors.deepPurple]
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
                        image: AssetImage('assets/eee.jpg'),
                        fit: BoxFit.cover,)),
                ),
              ),
              SizedBox(height: 20,),
              Text("About Course:", style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                height: 120,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Electrical & electronics engineering is an integrated branch of engineering. It also includes the concepts of power generation & distribution communication & machine control.", style: TextStyle(fontSize: 17, color: Colors.white),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  height: 100,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("This course deals with the technological aspects of electricity, especially the design & application of circuitry & electronic equipment.",style: TextStyle(fontSize: 17, color: Colors.white),),
                  )),
              SizedBox(height: 20,),
              Container(
                height: 115,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      "The electrical & electronics engineering (EEE) involves with the power. It can be existed in various forms like turbine, hydro, gas, fuel cell, solar, wind or geothermal energy.", style: TextStyle(fontSize: 17, color: Colors.white),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Career Oppurtunities:", style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                height: 230,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text("Some of the specific fields of career development are:",
                        style: TextStyle(fontSize: 17, color: Colors.white),),
                      SizedBox(height: 10,),
                      FlutterBulletList(
                          data: _data, bulletSize: 1, bulletType: BulletType.square,bulletColor:Colors.white,textStyle: TextStyle(fontSize: 16,color: Colors.white)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Skills Required", style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                height: 280,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FlutterBulletList(
                    data: skills, bulletSize: 1, bulletType: BulletType.square,bulletColor:Colors.white,textStyle: TextStyle(fontSize: 16,color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Text("Core companies to hire EEE graduates:", style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Container(
                height: 260,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FlutterBulletList(
                    data: comp, bulletSize: 1, bulletType: BulletType.square,bulletColor:Colors.white,textStyle: TextStyle(fontSize: 16,color: Colors.white)),
                ),
              ),
              SizedBox(height: 20,),
              Text("Average starting salary:", style: TextStyle(fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              Container(
                height:50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.deepPurple,),
                child: Center(
                  child: Text("Between 2.5 LPA and 5 LPA",
                    style: TextStyle(fontSize: 18, color: Colors.white),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
