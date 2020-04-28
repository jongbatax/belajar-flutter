import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Named Route',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => About(),
      }));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar Home'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Menuju Halaman About'),
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            }),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar About'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Kembali Ke Home'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
