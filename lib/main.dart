import 'package:flutter/material.dart';
import 'package:summer_iub_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Summer CSE464 class',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
      ),
      home: HomePage(pageTitle: "Welcome to CSE464!"),
    );
  }
}

