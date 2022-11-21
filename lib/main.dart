import 'package:flutter/material.dart';
import 'package:screens_challenge/screens/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: FirstScreen());
  }
}
