// startup_screen.dart
import 'package:flutter/material.dart';
import 'calculator_screen.dart';

class StartupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, I\'m Vrajesh Thaker!',
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 15),
            Text(
              'I am learning Flutter development, and I have created this Calculator App.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                navigateToCalculator(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Set the button background color
                onPrimary: Colors.white, // Set the text color
                elevation: 5, // Set the elevation (shadow) of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Set the button border radius
                ),
              ),
              child: Text('Start App'),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToCalculator(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/calculator');
  }
}