import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
class Signuppage extends StatefulWidget {
   Signuppage({super.key});
  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  final key=GlobalKey<FormState>();
  final email=TextEditingController();
  final pass=TextEditingController();
  final name=TextEditingController();
  @override
  Widget build(BuildContext context) {
    Future signup(String email,String pass) async{
      final FirebaseAuth auth=FirebaseAuth.instance;
      try{
        auth.createUserWithEmailAndPassword(email: email, password: pass).then((value) {
          Navigator.push(context, MaterialPageRoute(builder:(context)=>loginpage()));
        }).onError((error, stackTrace) {
          if(error is FirebaseAuthException){
            print(error.message);
          }
        });
      }
      catch(err){
        throw Exception(err);
      }
    };
    return Scaffold(
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Form(
          key: key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const SizedBox(height: 200,),
             Center(child: Text("Sign Up",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),)),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width:300,
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
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
                    icon: Icon(Icons.password_outlined),
                    hintText: "Password",
                  ),
                  validator: (val)=>val!.isEmpty?"Enter password":null,
                ),
              ),
             const SizedBox(height: 40,),
              ElevatedButton(onPressed: (){
                if(key.currentState!.validate()){
                  signup(email.text.trim(), pass.text.trim());
                }
              }, child: Text("Signup")),
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
