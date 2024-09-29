import 'package:flutter/material.dart';
import 'package:flutter_application_1/weather_data.dart';
import 'weather_repository.dart';

void main() {
  WeatherRepository weatherRepository = WeatherRepository();
  WeatherData weatherData = weatherRepository.getWeatherData();

  runApp(MyApp(weatherData: weatherData));
}

class MyApp extends StatelessWidget {
  final WeatherData weatherData;

  const MyApp({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projekt 12',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
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
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Temperature: ${weatherData.temperature}°C',
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 24.0,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Weather: ${weatherData.weatherCondition}',
                style: const TextStyle(
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
