import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // Sesuaikan dengan kebutuhan navbar Anda
      color: Colors.blue, // Ganti dengan warna atau dekorasi sesuai desain Anda
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Tambahkan fungsi untuk navigasi ke halaman beranda
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Tambahkan fungsi untuk navigasi ke halaman pencarian
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Tambahkan fungsi untuk navigasi ke halaman pengaturan
            },
          ),
        ],
      ),
    );
  }
}
