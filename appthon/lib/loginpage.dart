import 'package:appthon/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:appthon/newhome.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final key=GlobalKey<FormState>();
  final email=TextEditingController();
  final pass=TextEditingController();

  Future login(String email,String pass) async{
    try{
      final FirebaseAuth auth=FirebaseAuth.instance;
      auth.signInWithEmailAndPassword(email: email, password: pass).then((value){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>newhome()));
      }).onError((error, stackTrace){
        AlertDialog(title: Text("Wrong credentials"),);
      });
    }catch(err){
      throw Exception(err);
    }
  }

  Future forgotPass(String email) async{
    final FirebaseAuth auth=FirebaseAuth.instance;
    try{
      await auth.sendPasswordResetEmail(email: email).then((value){
        print("Reset Password");
      }).onError((error, stackTrace){
        print("Not registered with $email");
      });
    }catch(err){
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
            children: [
              SizedBox(height: 100,),
              Text("Login",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "Email",
                    icon: Icon(Icons.mail_outline)
                  ),
                  validator: (val)=>val!.isEmpty?"Enter email":null,
                ),
              ),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    icon: Icon(Icons.password_outlined)
                  ),
                  validator: (val)=>val!.isEmpty?"Enter Password":null,
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                if(key.currentState!.validate()){
                  login(email.text.trim(), pass.text.trim());
                }
              }, child:Text("Login")),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,
                children: [
                  GestureDetector(
                    onTap: (){
                      if(key.currentState!.validate()){
                        forgotPass(email.text.trim());
                      }
                    },
                    child: Center(child: Text("Forgot Password?",style: TextStyle(color: Colors.blue),)),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a Member?"),
                  SizedBox(width: 3,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text("Signup",style: TextStyle(color: Colors.blue),),
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
