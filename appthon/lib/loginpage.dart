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
        print("Wrong credentials");
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
      body: Form(
        key: key,
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Email",
                icon: Icon(Icons.mail_outline)
              ),
              validator: (val)=>val!.isEmpty?"Enter email":null,
            ),
            TextFormField(
              controller: pass,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                icon: Icon(Icons.password_outlined)
              ),
              validator: (val)=>val!.isEmpty?"Enter Password":null,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    if(key.currentState!.validate()){
                      forgotPass(email.text.trim());
                    }
                  },
                  child: Text("Forgot Password",textAlign: TextAlign.end,),
                )
              ],
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              if(key.currentState!.validate()){
                login(email.text.trim(), pass.text.trim());
              }
            }, child:Text("Login")),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Not a Member?"),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text("Signup"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
