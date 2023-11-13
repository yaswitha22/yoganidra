import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
class edit extends StatefulWidget {
  const edit({super.key});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  String? gender;
  final dateController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    var userProfile = Provider.of<UserProfile>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Colors.blueGrey,Colors.black]
            )
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.wVhUpKYUewQ7vfgKSqJ32wHaHv&pid=Api&P=0&h=220"),
                ),
              ),
              Row(
                children: [
                  Text("Name:",style: TextStyle(fontSize: 20),),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      textAlign: TextAlign.center,
                      onChanged: (value) => userProfile.updateUser(User(name: value, age: userProfile.user.age, gender: userProfile.user.gender, dob: userProfile.user.dob)),
                      decoration: InputDecoration(labelText: 'Name'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Age:",style: TextStyle(fontSize: 20),),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 200,
                    child: TextField(
                     // textAlign: TextAlign.center,
                      onChanged: (value) => userProfile.updateUser(User(name: userProfile.user.name, age: value, gender: userProfile.user.gender, dob: userProfile.user.dob)),
                      decoration: InputDecoration(labelText: 'Age'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text("Gender:",style: TextStyle(fontSize: 20),),
              Column(
                    children: [
                      RadioListTile(
                        title: Text("Male"),
                        value: "male",
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text("Female"),
                        value: "female",
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),

                      RadioListTile(
                        title: Text("Other"),
                        value: "other",
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      )
                    ],
              ),
              Row(
                children: [
                  Text("Date Of Birth:",style: TextStyle(fontSize: 20),),
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 200,
                    child: TextField(
                     // textAlign: TextAlign.center,
                      readOnly: true,
                      controller: dateController,
                      decoration:  InputDecoration(hintText: 'DOB',),
                      onTap: () async {
                        var date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100));
                        if (date != null) {
                          dateController.text = DateFormat('MM/dd/yyyy').format(date);
                        }
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context); // Return to the ProfilePage
                      },
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    shadowColor: Colors.black,
                    backgroundColor:Colors.blueGrey
                  ),
                      child: Text('Save Changes',style: TextStyle(fontSize: 20),),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class User {
  String name;
  String age;
  String gender;
  String dob;

  User({required this.name, required this.age, required this.gender, required this.dob});
}
class UserProfile extends ChangeNotifier {
  User _user = User(name: '', age: '', gender: '', dob: '');

  User get user => _user;

  void updateUser(User newUser) {
    _user = newUser;
    notifyListeners();
  }
}
