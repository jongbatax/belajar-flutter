import 'package:flutter/material.dart';

void main() => runApp(AppStateless());

class AppStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Stateless',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AppHome(title: 'Stateless App'),
    );
  }
}

class AppHome extends StatelessWidget {
  AppHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Column(
        children: <Widget>[
          BookWidget("Buku 1", "Deskripsi Buku 1",
              "https://covers.openlibrary.org/b/id/240726-S.jpg"),
          BookWidget("Buku 2", "Deskripsi Buku 2",
              "https://covers.openlibrary.org/b/id/6121771-S.jpg"),
        ],
      ),
    );
  }
}

class BookWidget extends StatelessWidget {
  final String judul;
  final String gambar;
  final String deskripsi;

  BookWidget(this.judul, this.deskripsi, this.gambar) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(judul),
            Text(deskripsi),
            Image.network(gambar)
          ],
        ),
      ),
    );
  }
}
