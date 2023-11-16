import 'package:appthon/name.dart';
import 'package:appthon/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Signuppage extends StatefulWidget {
  Signuppage({super.key});
  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  String? errorMessage = '';
  String? currentUserUID = '';
  final key=GlobalKey<FormState>();
  final email=TextEditingController();
  final pass=TextEditingController();
  final name=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth=FirebaseAuth.instance;
    Future usernameadd(String name,String email,String uid) async {
      await FirebaseFirestore.instance.collection('users').doc(auth.currentUser!.uid).set({
        'name': name,
        'uid': uid,
        'email':email,
      });
    }
    Future<void> createUserWithEmailAndPassword() async {
      // final FirebaseAuth auth=FirebaseAuth.instance;
      try {
        await auth.createUserWithEmailAndPassword(
          email: email.text,
          password:pass.text,
        );
        usernameadd(
            name.text,email.text,FirebaseAuth.instance.currentUser!.uid);
        Navigator.push(context, MaterialPageRoute(builder:(context)=>loginpage()));

      } on FirebaseAuthException catch (e) {
        setState(() {
          errorMessage = e.message;
        });
      }
    }
    return Scaffold(
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Form(
          key: key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Container(
               height: 300,
               width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                   gradient: LinearGradient(begin: Alignment.topCenter,colors: [Colors.pinkAccent,Colors.deepPurple])
               ),
               child:  Center(child: Column(
                 children: [
                   SizedBox(height: 200,),
                   Text("Sign Up",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white),),
                 ],
               )),
             ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width:300,
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    icon: Icon(Icons.person),
                    hintText: "Name",
                  ),
                  validator: (val)=>val!.isEmpty? "Enter Name":null,
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width:300,
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    icon: Icon(Icons.mail_outline),
                    hintText: "Email",
                  ),
                  validator: (val)=>val!.isEmpty? "Enter Email":null,
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    icon: Icon(Icons.password_outlined),
                    hintText: "Password",
                  ),
                  validator: (val)=>val!.isEmpty?"Enter password":null,
                ),
              ),
              const SizedBox(height: 40,),
              ElevatedButton(onPressed: (){
                if(key.currentState!.validate()){
                  createUserWithEmailAndPassword();
                }
              }, style:ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                textStyle: TextStyle(fontSize: 20),
                elevation: 30,
                shadowColor: Colors.black,
                backgroundColor: Colors.deepPurple,
                fixedSize: Size(150, 50)
              ),child: Text("Signup")),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already a member?",style: TextStyle(fontSize: 16),),
                  SizedBox(width:5,),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
                      },
                      child: const Text("Login",style: TextStyle(color: Colors.blue),)
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