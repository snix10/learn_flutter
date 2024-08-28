import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World....'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 50,
                child: Text('Hello World..........', textAlign: TextAlign.center)),
                
                
                
          ),
        ],
      ),
    );
  }
}
