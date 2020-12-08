import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("titulo")),
      body: ListView(
        padding: const EdgeInsets.all(40.0),
        children: [
          RaisedButton(
            child: Text('Prueba'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
