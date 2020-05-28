import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Valdation Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Validation Demo'),
        ),
        body: FormValidation(),
      ),
    );
  }
}

class FormValidation extends StatefulWidget {
  @override
  _FormValidationState createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return "Input Text / Teks Tidak Boleh Kosong";
              }
              return null;
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text('Data Valid'),
                );

                if (_formKey.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(snackBar);
                }
              },
              child: Text('Proses'),
            ),
          ),
        ],
      ),
    );
  }
}
