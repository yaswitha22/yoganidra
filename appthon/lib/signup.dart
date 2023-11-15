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
                  signup(email.text.trim(), pass.text.trim());
                }
              }, style:ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 20),
                elevation: 30,
                shadowColor: Colors.black,
                backgroundColor: Colors.blueGrey,
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