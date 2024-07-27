import 'package:flutter/material.dart';
import 'navbar.dart';
import 'body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Split Components Example'),
        // ),
        body: Column(
          children: <Widget>[
            CustomNavbar(), // Memanggil navbar yang sudah dibuat
            Expanded(
              child: CustomBody(), // Memanggil body yang sudah dibuat
            ),
          ],
        ),
      ),
    );
  }
}
