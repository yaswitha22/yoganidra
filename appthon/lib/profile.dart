import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
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
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 80,
              child: Center(child: Image(image: NetworkImage("https://tse2.mm.bing.net/th?id=OIP.OlnxO753VRgHKDLLDzCKoAHaHw&pid=Api&P=0&h=220"),))
            )
          ],
        ),
      ),
    );
  }
}
