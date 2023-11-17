import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class exam extends StatefulWidget {
  const exam({super.key});

  @override
  State<exam> createState() => _examState();
}

class _examState extends State<exam> {
  final List<ListItemModel> nat=[
    ListItemModel(label: "JEE-Mains"),
    ListItemModel(label: "JEE-Advanced"),
    ListItemModel(label: "BITSAT"),
    ListItemModel(label: "COMED-K"),
    ListItemModel(label: "Manipal"),
    ListItemModel(label: "VITEEE"),
    ListItemModel(label: "AMU"),
    ListItemModel(label: "NDA Entrance with MPC"),
  ];
  final List<ListItemModel> state=[
    ListItemModel(label: "Andhra Pradesh: AP EAMCET (Andhra Pradesh Engineering, Agriculture and Medical Common Entrance Test )"),
    ListItemModel(label: "Telangana: TS EAMCET (Telangana State Engineering, Agriculture and Medical Common Entrance Test)"),
    ListItemModel(label: "Karnataka : KCET (Karnataka Common Entrance Test)"),
    ListItemModel(label: "Maharashtra : Maharashtra Health and Technical Common Entrance Test"),
    ListItemModel(label: "West Bengal : WBJEE (WEST BENGAL JOINT ENTRANCE EXAMINATION)"),
    ListItemModel(label: "Kerala : KEAM (Kerala Engg Agriculture Medical Exam)"),
    ListItemModel(label: "Chattisgarh: CG PET (Chhattisgarh Pre Engineering Test)"),
    ListItemModel(label: "Gujarat : GUJCET (Gujarat Common Entrance Test)"),
    ListItemModel(label: "Jammu and Kashmir : JKCET (Jammu and Kashmir Common Entrance Test)"),
    ListItemModel(label: "Odisha: OJEE (ODISHA JOINT ENTRANCE EXAMINATION )"),
    ListItemModel(label: "Uttar Pradesh : UPSEE (Uttar Pradesh State Entrance Examination)"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Entrance Exams",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
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
            children: [
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(

                    colors: [Colors.black,Colors.blueGrey]
                  )
                  ),
                  child: Center(child: Text("National Level",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20,),
              FlutterBulletList(data: nat,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20),),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(

                          colors: [Colors.blueGrey,Colors.black,]
                      )
                  ),
                  child: Center(child: Text("State Level",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20,),
              FlutterBulletList(spaceBetweenItem:15,data: state,bulletType: BulletType.square,bulletSize: 2,textStyle: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}
