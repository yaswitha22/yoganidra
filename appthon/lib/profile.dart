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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${userProfile.user.name}'),
            Text('Age: ${userProfile.user.age}'),
            Text('Gender: ${userProfile.user.gender}'),
            Text('Date of Birth: ${userProfile.user.dob}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => edit()),
                );
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
/*return Scaffold(
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
            SizedBox(height: 40,),
            CircleAvatar(
              backgroundColor: Colors.deepOrange,
              radius: 50,
              child: Text("Y",style: TextStyle(fontSize: 50),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Yaswitha Katragadda",style: TextStyle(fontSize: 25),),
                SizedBox(width: 10,),
                Icon(Icons.edit)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child:Text("Cancel")),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Save"))
              ],
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
            }, child:Text("Go To HomePage"))
          ],
        ),
      ),
    );*/
}
