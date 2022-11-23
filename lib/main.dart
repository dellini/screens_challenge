import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screens_challenge/screens/_index.dart';
import 'package:screens_challenge/screens/screen3.dart';
import 'package:screens_challenge/screens/theme/consts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: ThemeConsts.backgroundColor,
      systemNavigationBarColor: ThemeConsts.backgroundColor,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdScreen(),
    );
  }
}
