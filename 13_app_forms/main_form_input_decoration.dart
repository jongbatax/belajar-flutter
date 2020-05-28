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
        home: FormStyling());
  }
}

class FormStyling extends StatefulWidget {
  @override
  _FormStylingState createState() => _FormStylingState();
}

class _FormStylingState extends State<FormStyling> {
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.addListener(_cetakNilai);
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void _cetakNilai() {
    print("Email : ${emailController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Styling and Handling Text Field'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (value) {
                print("Username text: $value");
              },
              decoration: InputDecoration(
                labelText: "Input Username",
                fillColor: Colors.green,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Input Email',
              ),
            )
          ],
        ),
      ),
    );
  }
}
