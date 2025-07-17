import 'package:flutter/material.dart';
import 'screens/landing/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Where2Go',
      theme: ThemeData(primarySwatch: Colors.purple), // Nightlife vibe
      home: const LandingPage(),
    );
  }
}