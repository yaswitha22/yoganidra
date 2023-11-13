import 'package:appthon/editprofile.dart';
import 'package:appthon/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    var userProfile = Provider.of<UserProfile>(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blueGrey, Colors.black],
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            "https://tse4.mm.bing.net/th?id=OIP.Ii15573m21uyos5SZQTdrAHaHa&pid=Api&P=0&h=220"),
                      ),
                      SizedBox(height: 10,),
                      Text('${userProfile.user.name}', style: TextStyle(fontSize: 35,color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text('Age: ${userProfile.user.age}',
                      style: TextStyle(fontSize: 30,color: Colors.black)),
                  SizedBox(height: 20,),
                  Text('Gender: ${userProfile.user.gender}',
                      style: TextStyle(fontSize: 30,color: Colors.black )),
                  SizedBox(height: 20,),
                  Text('Date of Birth: ${userProfile.user.dob}',
                      style: TextStyle(fontSize: 30,color: Colors.black)),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => edit()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey
                      ),
                      child: Text('Edit Profile', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                    }, style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey
                    ),
                        child:Text("Home",style: TextStyle(fontSize: 20),)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}