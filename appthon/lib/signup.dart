import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final key=GlobalKey<FormState>();
  final email=TextEditingController();
  final pass=TextEditingController();

  Future signup(String email,String pass) async{
    final FirebaseAuth auth=FirebaseAuth.instance;
    try{
      auth.createUserWithEmailAndPassword(email: email, password: pass).then((value) {
        print("$email Successful");
      }).onError((error, stackTrace) {
        print("Already have an account $email");
      });
    }
    catch(err){
      throw Exception(err);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
              Icon(Icons.mobile_friendly_outlined,size: 200,),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  icon: Icon(Icons.mail_outline)
                ),
                validator: (val)=>val!.isEmpty? "Enter Email":null,
              ),
              TextFormField(
                controller: pass,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.password_outlined)
                ),
                validator: (val)=>val!.isEmpty?"Enter password":null,
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                if(key.currentState!.validate()){
                  signup(email.text.trim(), pass.text.trim());
                }
              }, child: Text("Signup")),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Already a member?"),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
