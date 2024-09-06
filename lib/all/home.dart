import 'package:flutter/material.dart';
import 'package:learn_flutter_coba/all/easysidemenu.dart';
import 'package:learn_flutter_coba/all/sirkularmenuplus.dart';
// import 'package:learn_flutter_coba/all/sikularmenu.dart';
import 'try.dart'; // Import halaman DetailPage
import 'helloworld.dart';
import 'gesturdetector.dart';
import 'scroll.dart';
import 'flexiblewidget.dart';
import 'sikularmenu.dart';





class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home learn flutter'),
      ),
      body: SingleChildScrollView(
        child: Container(
          // margin: EdgeInsets.only(right: 100, left: 100),
          // color: Color.fromARGB(100, 192, 10, 180),
          // padding: EdgeInsets.fromLTRB(50, 100, 200, 400),
          child: Wrap(
            spacing: 10.0, // Jarak horizontal antar kotak
            runSpacing: 10.0, // Jarak vertikal antar baris
            children: [
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
                      MaterialPageRoute(builder: (context) => PageDua()),
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
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScrollLearn()),
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
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FlexibleWidgetPage()),
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
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuSirkular()),
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
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SirkularmenuplusPage()),
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
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Easysidemenu()),
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
              // Tambahkan lebih banyak Container sesuai kebutuhan
            ],
          ),
        ),
        
      ),
    );
  }
}
