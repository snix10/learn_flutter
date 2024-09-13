import 'package:flutter/material.dart';
import 'package:floating_menu_panel/floating_menu_panel.dart'; // Import Floating Menu Panel

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating Menu Panel Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Menu Panel Demo'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Stack(
            children: [
              Center(
                child: Text(
                  'Welcome to the Floating Menu Panel Demo',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              FloatingMenuPanel(
                onPressed: (index) {
                  // Open drawer when a button is pressed
                  Scaffold.of(context).openDrawer();
                },
                buttons: [
                  Icons.star_border_outlined,
                  Icons.add_comment,
                  Icons.music_note
                ],
                backgroundColor: Colors.blueGrey, // Warna latar belakang panel
                contentColor: Colors.white, // Warna ikon
                borderColor: Colors.black, // Warna border, jika ada
                borderWidth: 2.0, // Lebar border, jika ada
              ),
            ],
          );
        },
      ),
    );
  }
}
