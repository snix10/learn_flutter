import 'package:flutter/material.dart';
import 'all/home.dart'; // Import HomePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'learn flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Menetapkan halaman awal
    );
  }
}
