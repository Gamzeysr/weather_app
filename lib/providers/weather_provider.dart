// import 'package:flutter/material.dart';
// import 'package:weather_app/models/hava_durumu.dart';
// import 'package:weather_app/services/hava_durumu_servisi.dart';

// class WeatherProvider extends ChangeNotifier {
//   List<Weather> sonuclar = [];
//   Weather? _weatherData;

//   Weather? get weatherData => _weatherData;

//   set weatherData(Weather? value) {
//     _weatherData = value;
//     notifyListeners(); // weatherData değiştiğinde dinleyicileri bilgilendirin
//     fetchWeatherData();
//   }

//   void fetchWeatherData() async {
//     var searchTerm;
//     if (searchTerm.isEmpty) return;

//     try {
//       final weather = await getHavaDurumuBySehirAdi(searchTerm);
//       weatherData = weather;
//       sonuclar.add(weather); // Sonuçları listeye ekleyin
//       notifyListeners();
//     } catch (error) {
//       print('Error fetching weather data: $error');
//     }
//   }

//   void updateSearchTerm(String text) {
//     var searchTerm = text;
//     sonuclar.clear(); // Sonuçları temizleyin
//     fetchWeatherData();
//   }
// }

import 'package:flutter/material.dart';
import 'package:weather_app/models/hava_durumu.dart';
import 'package:weather_app/services/hava_durumu_servisi.dart';

class WeatherProvider extends ChangeNotifier {
  String searchTerm = 'ankara';
  List<Weather> sonuclar = [];

  void updateSearchTerm(String text) {
    searchTerm = text;
    // notifyListeners();
    // fetchWeatherData();
  }

  void fetchWeatherData() async {
    if (searchTerm.isEmpty) return;

    try {
      final weather = await getHavaDurumuBySehirAdi(searchTerm);
      sonuclar.add(weather);
      if (sonuclar.length > 5) {
        sonuclar.removeAt(0);
      }

      notifyListeners();
    } catch (error) {
      print('Error fetching weather data: $error');
    }
  }
  // Future<List<Weather>> fetchWeatherData() async {
  // if (searchTerm.isEmpty) return
  // sonuclar;

  //   try {
  //     final weather = await getHavaDurumuBySehirAdi(searchTerm);
  //     // sonuclar.add(weather);
  //     notifyListeners();
  //     return sonuclar;
  //   } catch (error) {
  //     print('Error fetching weather data: $error');
  //     throw Exception("Hata!");
  //   }
  // }
}
