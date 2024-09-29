import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projekt 12',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome to Weather-App',
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(255, 202, 238, 255),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'City: Leipzig',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Temperature: 35°C',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24.0,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Weather: Windy',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24.0,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
