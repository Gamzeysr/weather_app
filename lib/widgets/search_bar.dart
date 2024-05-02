import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/weather_provider.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _searchTextController,
            decoration: const InputDecoration(
              hintText: 'Şehir ara...',
            ),
            onChanged: (text) {
              context.read<WeatherProvider>().updateSearchTerm(text);
              context
                  .read<WeatherProvider>()
                  .fetchWeatherData(); // Aramada fetchWeatherData çağır
            },
          ),
        ),
        IconButton(
          onPressed: () {
            // fetchWeatherData'yı burada çağırmaya gerek yok, onChanged'de zaten çağırılıyor
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}

// class WeatherProvider extends ChangeNotifier {
//   String searchTerm = '';
//   Weather? weatherData;

//   void updateSearchTerm(String text) {
//     searchTerm = text;
//     notifyListeners();
//     fetchWeatherData();
//   }

//   void fetchWeatherData() async {
//     if (searchTerm.isEmpty) return;

//     try {
//       final weather = await getHavaDurumuBySehirAdi(searchTerm);
//       weatherData = weather;
//       notifyListeners();
//     } catch (error) {
//       print('Error fetching weather data: $error');
//     }
//   }
// }
