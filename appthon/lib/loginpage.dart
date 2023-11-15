import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'homepage.dart';
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
        Navigator.push(context, MaterialPageRoute(builder: (context)=>mainsrc()));
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
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [Colors.blueGrey,Colors.black]
                    ),
                    borderRadius: BorderRadius.only(bottomLeft:Radius.elliptical(70,70) ,bottomRight: Radius.elliptical(70,70))
                ),
                child:  Center(child: Column(
                  children: [
                    SizedBox(height: 200,),
                    Text("Login",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white),),
                  ],
                )),
              ),
              SizedBox(height: 90,),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                    hintText: "Email",
                    icon: Icon(Icons.mail_outline)
                  ),
                  validator: (val)=>val!.isEmpty?"Enter email":null,
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
                    hintText: "Password",
                    icon: Icon(Icons.password_outlined)
                  ),
                  validator: (val)=>val!.isEmpty?"Enter Password":null,
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                if(key.currentState!.validate()){
                  login(email.text.trim(), pass.text.trim());
                }
              }, style:ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20),
                  elevation: 30,
                  shadowColor: Colors.black,
                  backgroundColor: Colors.blueGrey,
                  fixedSize: Size(150, 50)),child:Text("Login")),
              SizedBox(height: 20,),
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
