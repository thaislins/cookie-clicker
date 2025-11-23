import 'package:cookie_clicker/cookie_clicker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cookie Clicker"),
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
        ),
        body: Center(child: CookieClicker()),
      ),
    );
  }
}
