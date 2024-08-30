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
      body: Row(
        children: [
          // Text('Welcome to Home Page'),
          // SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     // Navigasi ke DetailPage
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => DetailPage()),
          //     );
          //   },
          //   child: Text('Go to Detail Page'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     // Navigasi ke DetailPage
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => HelloWorld()),
          //     );
          //   },
          //   child: Text('HelloWorld'),
          // ),
          Container(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(8),
                minimumSize: Size(100, 100), // Ukuran kotak
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100), // Bentuk kotak
                ),
              ),
              child: Icon(
                Icons.ac_unit, // Ikon yang ingin ditampilkan
                size: 50, // Ukuran ikon
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelloWorld()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(8),
                minimumSize: Size(100, 100), // Ukuran kotak
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Mengatur sudut rounded
                ),
              ),
              child: Icon(
                Icons.usb_rounded, // Ikon yang ingin ditampilkan
                size: 50, // Ukuran ikon
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(8),
                minimumSize: Size(100, 100), // Ukuran kotak
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Bentuk kotak
                ),
              ),
              child: Icon(
                Icons.verified_user_rounded, // Ikon yang ingin ditampilkan
                size: 50, // Ukuran ikon
              ),
            ),
          ),
        ],
      ),
    );
  }
}
