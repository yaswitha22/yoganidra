import 'package:appthon/home.dart';
import 'package:appthon/profile.dart';
import 'package:appthon/search.dart';
import 'package:flutter/material.dart';
import 'favourite.dart';
import 'signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
class mainsrc extends StatefulWidget {
  const mainsrc({super.key});

  @override
  State<mainsrc> createState() => _mainsrcState();
}

class _mainsrcState extends State<mainsrc> {
  final screens=[home(),search(),favourite(),profile()];
  int index = 0;
  @override
  void _onItemTapped(int idx) {
    setState(() {
      index = idx;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30)),
        child: BottomNavigationBar(
            onTap: _onItemTapped,
            currentIndex: index,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blueGrey,
            elevation: 30,

            //fixedColor: Colors.greenAccent,
            selectedIconTheme: IconThemeData(
                color: Colors.white,
                size: 24
            ),
            unselectedIconTheme: IconThemeData(
                color: Colors.white
            ),
            selectedItemColor: Colors.black,
            selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24
            ),
            unselectedLabelStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline_rounded),
                  label: "Favourite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile")


            ]),
      ),
    );
  }
}
