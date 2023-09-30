import 'package:flutter/material.dart';
import 'package:study/get_started.dart';
import 'package:study/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GetStarted(),
      routes: {
        'questions': (context) {
          return const HomePage();
        },
        'Get Started': (context) {
          return const GetStarted();
        },
      },
    );
  }
}
