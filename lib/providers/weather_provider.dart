import 'package:flutter/material.dart';
import 'package:weather_app/models/hava_durumu.dart';
import 'package:weather_app/services/hava_durumu_servisi.dart';

class WeatherProvider extends ChangeNotifier {
  Weather? _weatherData;

  Weather? get weatherData => _weatherData;

  set weatherData(Weather? value) {
    _weatherData = value;
    notifyListeners(); // weatherData değiştiğinde dinleyicileri bilgilendirin
    fetchWeatherData();
  }

  void fetchWeatherData() async {
    var searchTerm;
    if (searchTerm.isEmpty) return;

    try {
      final weather = await getHavaDurumuBySehirAdi(searchTerm);
      weatherData = weather;
      notifyListeners();
    } catch (error) {
      print('Error fetching weather data: $error');
    }
  }

  void updateSearchTerm(String text) {}
}
