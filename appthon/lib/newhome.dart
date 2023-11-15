import 'package:appthon/favourite.dart';
import 'package:appthon/home.dart';
import 'package:appthon/profile.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

class newhome extends StatefulWidget {
  const newhome({super.key});

  @override
  State<newhome> createState() => _newhomeState();
}

class _newhomeState extends State<newhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [SizedBox(height: 10,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                color: Colors.blue,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Icon(Icons.home,size: 120,color: Colors.white,),
                          SizedBox(height: 20,),
                          Text("Home", style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  color: Colors.green,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => favourite()));
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(Icons.favorite,size: 120,color: Colors.white,),
                            SizedBox(height: 20,),
                            Text("Favourites", style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                color: Colors.yellow,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profile()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Icon(Icons.person,size: 120,color: Colors.white,),
                          SizedBox(height: 20,),
                          Text("Profile", style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding:EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blueGrey,Colors.black]
                  )
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  "Yaswitha Katragadda",
                  style: TextStyle(fontSize: 18,color: Colors.black),
                ),
                accountEmail: Text("21A91A6164@aec.edu.in",style: TextStyle(color: Colors.black),),
                currentAccountPictureSize: Size.square(53),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    "Y",
                    style: TextStyle(fontSize: 30.0, color: Colors.black),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ),
            //DrawerHeader
            ListTile(
              leading: Icon(Icons.person),
              title: Text(' My Profile '),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text(' My Course '),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>favourite()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title:  Text('LogOut'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
