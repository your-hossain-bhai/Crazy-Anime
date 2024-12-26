import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'crazy_animations.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.greenAccent, Colors.orange, Colors.cyan],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Spacer(flex: 2),
            Text(
              "Long Live Inan Bhai!",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.blueAccent,
                    offset: Offset(0, 0),
                    blurRadius: 10.0,
                  ),
                  Shadow(
                    color: Colors.purple,
                    offset: Offset(0, 0),
                    blurRadius: 20.0,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40), // Space between text and button
            ElevatedButton(
              onPressed: () {
                Get.to(() => CrazyBazy());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
              ),
              child: Text(
                "Okkkkkk",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(flex: 3), // Adjust the space below to push the content down
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0), // Adds space at the bottom
              child: Text(
                "© Your Hossain Bhai", // Copyright text
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(GetMaterialApp(
    home: HomePage(),
  ));
}