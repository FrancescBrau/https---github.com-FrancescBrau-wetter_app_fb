import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projekt 12',
      home:  Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Weather-App'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueGrey,
          child: Center(
            child: Text('Weather'),
          ),
        ),
        ),
      ),
    )
  }
}