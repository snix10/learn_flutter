import 'package:flutter/material.dart';

class AnimeCard {
  final String title;
  final String imageUrl;
  final String description;

  AnimeCard({
    required this.title,
    required this.imageUrl,
    required this.description,
  });
}

class CustomBody extends StatelessWidget {
  // Contoh data kartu anime
  final List<AnimeCard> animeCards = [
    AnimeCard(
      title: 'Attack on Titan',
      imageUrl: 'https://via.placeholder.com/300', // URL gambar sampul
      description:
          'Attack on Titan is a Japanese manga series written and illustrated by Hajime Isayama.',
    ),
    AnimeCard(
      title: 'Demon Slayer',
      imageUrl: 'https://via.placeholder.com/300', // URL gambar sampul
      description:
          'Demon Slayer: Kimetsu no Yaiba is a Japanese manga series written and illustrated by Koyoharu Gotouge.',
    ),
    AnimeCard(
      title: 'My Hero Academia',
      imageUrl: 'https://via.placeholder.com/300', // URL gambar sampul
      description:
          'My Hero Academia is a Japanese superhero manga series written and illustrated by Kōhei Horikoshi.',
    ),
    // Tambahkan kartu lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anime Favorites'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300.0, // Lebar maksimum setiap item dalam grid
            crossAxisSpacing: 20.0, // Spasi antara kolom
            mainAxisSpacing: 20.0, // Spasi antara baris
          ),
          itemCount: animeCards.length,
          itemBuilder: (context, index) {
            return _buildAnimeCard(animeCards[index]);
          },
        ),
      ),
    );
  }

  Widget _buildAnimeCard(AnimeCard animeCard) {
    return Card(
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200.0,
            child: Image.network(
              animeCard.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  animeCard.title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  animeCard.description,
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Anime App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: CustomBody(),
  ));
}
