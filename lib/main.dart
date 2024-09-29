import 'package:flutter/material.dart';
import 'weather_data.dart';

void main() {
  WeatherData weatherData = WeatherData(
    city: 'Leipzig',
    temperature: 35.5,
    weatherCondition: 'Raining',
  );

  runApp(MyApp(weatherData: weatherData));
}

class MyApp extends StatelessWidget {
  final WeatherData weatherData;

  MyApp({required this.weatherData});

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
                'City: ${weatherData.city}',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Temperature: ${weatherData.temperature}°C',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24.0,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Weather: ${weatherData.weatherCondition}',
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
