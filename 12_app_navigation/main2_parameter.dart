import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MaterialApp(
    title: 'Passing Parameter',
    theme: ThemeData(primarySwatch: Colors.blue),
    routes: {
      '/': (context) => Home(),
      '/about': (contex) => About(),
    },
  ));
}

class Home extends StatefulWidget {
  String message = "Ini adalah pesan dari Widget Home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Home'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Ke halaman about'),
          onPressed: () {
            Navigator.pushNamed(context, '/about', arguments: widget.message);
          },
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pesan = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(title: Text('Halaman About')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('$pesan'),
            RaisedButton(
                child: Text('Kembali ke Home'),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
