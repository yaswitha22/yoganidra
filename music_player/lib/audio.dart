import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'music.dart';
import 'musicScreen.dart';
import 'package:flutter_paypal_checkout/flutter_paypal_checkout.dart';

class AudioListScreen extends StatelessWidget {
  final VoidCallback onCompleteStage; // Callback for stage completion

  const AudioListScreen({super.key, required this.onCompleteStage});

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
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => PaypalCheckout(
                    sandboxMode: true,
                    clientId: "ur secret key",
                    secretKey: "ur secret key",
                    returnURL: "www.google.com",
                    cancelURL: "www.google.com",
                    transactions: const [
                      {
                        "amount": {
                          "total": '70',
                          "currency": "USD",
                          "details": {
                            "subtotal": '70',
                            "shipping": '0',
                            "shipping_discount": 0
                          }
                        },
                        "description": "The payment transaction description.",
                        "item_list": {
                          "items": [
                            {
                              "name": "Apple",
                              "quantity": 4,
                              "price": '5',
                              "currency": "USD"
                            },
                            {
                              "name": "Pineapple",
                              "quantity": 5,
                              "price": '10',
                              "currency": "USD"
                            }
                          ],
                          "shipping_address": {
                            "recipient_name": "Dilkhush Rahi",
                            "line1": "Bihar",
                            "line2": "",
                            "city": "Katihar",
                            "country_code": "IN",
                            "postal_code": "11001",
                            "phone": "+00000000",
                            "state": "Texas"
                          },
                        }
                      }
                    ],
                    note: "PAYMENT_NOTE",
                    onSuccess: (Map params) async {
                      print("onSuccess: $params");
                    },
                    onError: (error) {
                      print("onError: $error");
                      Navigator.pop(context);
                    },
                    onCancel: () {
                      print('cancelled:');
                    },
                  ),
                ),
              );
            },
            child: Text("Subscription"),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
          )
        ],
        iconTheme: IconThemeData(color: Colors.white), // Set back arrow color
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: BackgroundStarsPainter(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
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
                                    fontSize: 20),
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
                                      MaterialPageRoute(
                                          builder: (context) => MusicPlayerScreen()),
                                    );
                                    model.loadTrackAtIndex(index);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                            'You must complete the previous audio to listen to this one.'),
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
                  ElevatedButton(
                      onPressed: () {
                        onCompleteStage(); // Call the callback when the button is pressed
                        Navigator.pop(context); // Return to the previous screen
                      },
                      child: Text("Complete stage"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundStarsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.yellow // Color of the stars
      ..strokeWidth = 1.0
      ..style = PaintingStyle.fill;

    final random = Random();
    final numStars = 30; // Number of stars
    for (int i = 0; i < numStars; i++) {
      double x = random.nextDouble() * size.width;
      double y = random.nextDouble() * size.height;
      double radius = random.nextDouble() * 3.0 + 1.0;// Size of stars

      canvas.drawCircle(Offset(x, y), radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
