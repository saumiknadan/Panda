import 'package:flutter/material.dart';
import 'package:panda/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panda',
      theme: ThemeData(
        
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      home:  MyHomePage(),
    );
  }
}
