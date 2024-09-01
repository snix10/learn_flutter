import 'package:flutter/material.dart';

class ScrollLearn extends StatefulWidget {
  @override
  State<ScrollLearn> createState() => _ScrollLearnState();
}

class _ScrollLearnState extends State<ScrollLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Scroll'),
      ),
      body: Column(
        children: [
          // Widget yang memungkinkan scroll horizontal
          Container(
            height: 150, // Atur tinggi sesuai kebutuhan
            color: Colors.grey[200],
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(25, (index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.all(8),
                    color: Colors.blue[(index % 9 + 1) * 100],
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          // Widget yang memungkinkan scroll vertikal
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                children: List.generate(100, (index) {
                  return Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(8),
                    color: Colors.blue[(index % 9 + 1) * 100],
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
