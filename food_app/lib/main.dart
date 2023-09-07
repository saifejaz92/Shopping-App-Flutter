import 'package:flutter/material.dart';
import 'screens/get_started_screen/get_started_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      home: GetStartedScreen(),
    );
  }
}