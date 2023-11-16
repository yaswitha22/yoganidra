import 'package:appthon/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future createUserInFirestore(User user, String username) async {
    DocumentSnapshot doc = await _firestore.collection('users').doc(user.uid).get();

    if (!doc.exists) {
      _firestore.collection('users').doc(user.uid).set({
        'username': username,
        'email': user.email,
        'createdOn': DateTime.now(),
      });
    }
  }
  Future updateUserProfile(User user, String newUsername) async {
    await _firestore.collection('users').doc(user.uid).update({
      'username': newUsername,
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          stream:  FirebaseFirestore
              .instance
              .collection('users')
              .doc(FirebaseAuth.instance.currentUser!.uid)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }
            Map<String, dynamic> data =
            snapshot.data!.data()! as Map<String, dynamic>;
            return Center(
              child: Stack(
                children: [
                  Container(
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 300,
                        width: 360,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 50,),
                              Center(child: CircleAvatar(radius: 60,child: Icon(Icons.person,size: 120,),)),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Name :  ${data['name']}",style: TextStyle(fontSize: 20,color: Colors.blue),textAlign: TextAlign.start,),
                              ),
                              SizedBox(height: 8,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Email :  ${data['email']}",style: TextStyle(fontSize: 20,color: Colors.blue)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );//
          },
        ),
      ),
    );
  }}