import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';
import 'dart:math'; // Untuk pi


// class MenuSirkular extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeApp(),
//     );
//   }
// }

class MenuSirkular extends StatelessWidget {
  final GlobalKey<CircularMenuState> _menuKey = GlobalKey<CircularMenuState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Circular Menu Example',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: CircularMenu(
          key: _menuKey,
          alignment: Alignment.bottomRight,
          startingAngleInRadian: 1.00 * pi,
          endingAngleInRadian: 1.50 * pi,
          backgroundWidget: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    _menuKey.currentState?.forwardAnimation();
                  },
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Open',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    _menuKey.currentState?.reverseAnimation();
                  },
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Close',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
          items: [
            CircularMenuItem(
              icon: Icons.home,
              onTap: () {
                // Action for home icon
              },
              color: Colors.green,
              iconColor: Colors.white,
            ),
            CircularMenuItem(
              icon: Icons.search,
              onTap: () {
                // Action for search icon
              },
              color: Colors.orange,
              iconColor: Colors.white,
            ),
            CircularMenuItem(
              icon: Icons.settings,
              onTap: () {
                // Action for settings icon
              },
              color: Colors.deepPurple,
              iconColor: Colors.white,
            ),
            CircularMenuItem(
              icon: Icons.settings,
              onTap: () {
                // Action for settings icon
              },
              color: Colors.deepPurple,
              iconColor: Colors.white,
            ),
            CircularMenuItem(
              icon: Icons.settings,
              onTap: () {
                // Action for settings icon
              },
              color: Colors.deepPurple,
              iconColor: Colors.white,
            ),
            CircularMenuItem(
              icon: Icons.settings,
              onTap: () {
                // Action for settings icon
              },
              color: Colors.deepPurple,
              iconColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
