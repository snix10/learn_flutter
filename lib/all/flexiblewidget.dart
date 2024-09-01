import 'package:flutter/material.dart';

class FlexibleWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World....'),
      ),
       body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Container(
                  color: const Color.fromARGB(255, 130, 244, 54),
                )),
            Flexible(
                flex: 2,
                child: Container(
                  color: const Color.fromARGB(255, 244, 54, 206),
                )),
            Flexible(
                flex: 1,
                child: Container(
                  color: const Color.fromARGB(255, 54, 244, 222),
                )),
          ],
        ),
    );
  }
}



