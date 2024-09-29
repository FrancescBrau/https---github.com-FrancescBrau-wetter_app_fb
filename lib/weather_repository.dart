import 'weather_data.dart';

class WeatherRepository {
  final String _city = 'Leipzig';
  final double _temperature = 1.5;
  final String _weatherCondition = 'Snowing';

  WeatherData getWeatherData() {
    return WeatherData(
      city: _city,
      temperature: _temperature,
      weatherCondition: _weatherCondition,
    );
  }
}
