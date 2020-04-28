import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Route ke About'),
          onPressed: () {
            //Kode Untuk Navigasi
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => About()),
            );
          },
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page About'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Kembali Ke Home'),
            onPressed: () {
              //Kode Kembali Home
              Navigator.pop(context);
            }),
      ),
    );
  }
}
