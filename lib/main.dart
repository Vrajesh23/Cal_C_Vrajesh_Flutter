// main.dart
import 'package:flutter/material.dart';
import 'calculator_screen.dart';
import 'startup_screen.dart'; // Import the new startup screen
import 'history_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => StartupScreen(),
        '/calculator': (context) => const CalculatorScreen(),
        '/history': (context) => HistoryScreen(history: []),
      },
    );
  }
}