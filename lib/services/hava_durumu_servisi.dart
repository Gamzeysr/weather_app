// services/hava_durumu_servisi.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/hava_durumu.dart';

// final int lat = 35;
// final int lon = 35;
// final String part = "daily";
final String _apiKey = "31617bc8c59640898f5113626240105";
// final String _baseUrl =
//     "https://api.openweathermap.org/data/3.0/onecall?lat=${lat}&lon=${lon}&exclude=${part}&appid=${_apiKey}";
final String _baseUrl =
    "http://api.weatherapi.com/v1/current.json?key=${_apiKey} &q=İzmir&aqi=no";

Future<HavaDurumu> getHavaDurumuBySehirAdi() async {
  print(_baseUrl);
  final url = Uri.parse(_baseUrl);
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    print(json);

    return HavaDurumu.fromJson(json);
  } else {
    throw Exception("Hava durumu verileri alınamadı: ${response.statusCode}");
  }
}
