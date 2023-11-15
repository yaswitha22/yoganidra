import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';
class bsw extends StatefulWidget {
  const bsw({super.key});

  @override
  State<bsw> createState() => _bswState();
}

class _bswState extends State<bsw> {
  final List<ListItemModel> _data=[
    ListItemModel(label: "Human Services Assistant"),
    ListItemModel(label: "Nonprofit Organizations"),
    ListItemModel(label: "Policy Analyst/Researcher"),
    ListItemModel(label: "Probation Officer"),
    ListItemModel(label: "Case Manager"),
    ListItemModel(label: "Social Worker",data: [
      ListItemModel(label: "Child Welfare Agencies"),
      ListItemModel(label: "Healthcare Facilities"),
      ListItemModel(label: "Community Organizations"),
      ListItemModel(label: "Correctional Facilities"),
    ]),
  ];
  final List<ListItemModel> comp=[
    ListItemModel(label: "Nonprofit Organizations and NGOs:",data: [
      ListItemModel(label: "Save the Children"),
      ListItemModel(label: "World Vision"),
      ListItemModel(label: "Habitat for Humanity"),
      ListItemModel(label: "Oxfam"),
      ListItemModel(label: "Amnesty International"),
    ]),
    ListItemModel(label: " Government Agencies:",data: [
      ListItemModel(label: "IDepartments of Social Services"),
      ListItemModel(label: "Health and Human Services"),
      ListItemModel(label: "Child Welfare Agencies"),
      ListItemModel(label: "Department of Veterans Affairs"),
    ]),
    ListItemModel(label: " Healthcare and Mental Health Institutions:",data: [
      ListItemModel(label: "Hospitals and Clinics"),
      ListItemModel(label: "Mental Health Centers"),
      ListItemModel(label: "Rehabilitation Centers"),
    ]),
    ListItemModel(label: "Education Sector:",data: [
      ListItemModel(label: "Schools"),
      ListItemModel(label: "Colleges/Universities"),
    ]),
    ListItemModel(label: "Community Development Organizations:",data: [
      ListItemModel(label: "Local Community Centers"),
      ListItemModel(label: "Urban Development Authorities")
    ]),
    ListItemModel(label: "Corporate Social Responsibility (CSR) Wings:",data: [
      ListItemModel(label: "Companies with robust CSR programs may hire social work graduates for community engagement, employee well-being initiatives, etc."),
    ]),
    ListItemModel(label: "Counseling and Rehabilitation Centers:",data: [
      ListItemModel(label: "Substance Abuse Treatment Centers"),
      ListItemModel(label: "Crisis Intervention Centers")
    ]),
    ListItemModel(label: "Probation and Correctional Services:",data: [
      ListItemModel(label: "Probation Offices"),
      ListItemModel(label: "Correctional Facilities")
    ])
  ];
  final List<ListItemModel> skills=[
    ListItemModel(label: "Empathy and strong interpersonal skills"),
    ListItemModel(label: "Advocacy and communication abilities"),
    ListItemModel(label: "Problem-solving and critical thinking"),
    ListItemModel(label: "Cultural competence and sensitivity"),
    ListItemModel(label: "Ability to work in diverse settings and with different populations"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BSW",style: TextStyle(fontSize: 25,color: Colors.white),)),
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
                  child: Container(
                      height: 150,
                      width: 300,
                      color: Colors.black,
                      child: Image(image: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.sWuYExyHLyXb-y688z14-wAAAA&pid=Api&P=0&h=220"),
                          fit: BoxFit.cover))
              ),
              SizedBox(height: 20,),
              Text("About Course",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("B.A.Social Work or Bachelor of Social Work (BSW) is an undergraduate social work program. Social Work Course is practice-based therefore, encompassing the understanding of various theories of social work.\n\nSocial work basically refers to the various services which are designed to aid and increase the welfare of the poor, needy, and the aged.\n\nIt comprises three years with six semesters. It also imparts education on the values of social work and consciously applies these in practice.",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Career Oppurtunities",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              Text("On completing a BSW course there are various career aspects or choices that one can pursue for. Some of the profiles are:",style: TextStyle(fontSize: 17,color: Colors.black),),
              SizedBox(height: 10,),
              FlutterBulletList(data: _data,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 20,),
              Text("Skills Required",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
              FlutterBulletList(data: skills,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              SizedBox(height: 10,),
              Text("Top Recruiters or Core Companies to hire BSW graduates:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              FlutterBulletList(data: comp,spaceBetweenItem:15,bulletSize: 2,bulletType: BulletType.square,textStyle: TextStyle(fontSize: 18)),
              Text("Average starting salary:",style: TextStyle(fontSize: 20,color: Colors.pink,fontStyle: FontStyle.italic)),
              SizedBox(height: 10,),
              Text("Between 2 LPA and 10 LPA based on specialisation",style: TextStyle(fontSize: 17,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
