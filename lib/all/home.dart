import 'package:flutter/material.dart';
import 'try.dart'; // Import halaman DetailPage
import 'helloworld.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home learn flutter'),
      ),
      body: Center(
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Welcome to Home Page'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke DetailPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage()),
                    );
                  },
                  child: Text('Go to Detail Page'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke DetailPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  HelloWorld()),
                    );
                  },
                  child: Text('HelloWorld'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
