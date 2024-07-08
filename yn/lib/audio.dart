import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'music.dart';
import 'musicScreen.dart';

class AudioListScreen extends StatelessWidget {
  const AudioListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<AudioPlayerModel>();
    final double listViewHeight = MediaQuery.of(context).size.height * 0.5;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Audio List',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white), // Set back arrow color
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              MusicScreen(),
              SizedBox(height: 30),
              Container(
                height: 38,
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    "Audio PlayList...",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: listViewHeight,
                child: ListView.builder(
                  itemCount: playlist.length,
                  itemBuilder: (context, index) {
                    final track = playlist[index];
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Audio-${index + 1}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20
                            ),
                          ),
                          subtitle: Text(
                            model.durationText,
                            style: TextStyle(color: Colors.white70),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.play_arrow, color: Colors.white),
                            onPressed: () {
                              if (index == 0 || playlist[index - 1].vis) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MusicPlayerScreen()),
                                );
                                model.loadTrackAtIndex(index);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('You must complete the previous audio to listen to this one.'),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                        Divider(color: Colors.white54),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
