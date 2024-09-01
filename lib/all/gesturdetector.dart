import 'package:flutter/material.dart';

class PageDua extends StatefulWidget {
  const PageDua({super.key});

  @override
  State<PageDua> createState() => _PageDuaState();
}

class _PageDuaState extends State<PageDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("gesture detector"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                print('Container tapped');
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.green,
                child: Text('Tap me'),
              ),
            )),
      ),
    );
  }
}
