import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/hava_durumu.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/services/hava_durumu_servisi.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  String cardNumber = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
              // controller: _searchTextController,
              decoration: const InputDecoration(
                hintText: 'Şehir ara...',
              ),
              onChanged: (text) {
                context.read<WeatherProvider>().updateSearchTerm(text);
                setState(() {
                  cardNumber = text; // Update cardNumber here
                });
              },
              onSubmitted: (text) {
                context.read<WeatherProvider>().fetchWeatherData();
              }),
        ),
        TextButton(
            onPressed: () {
              context.read<WeatherProvider>().fetchWeatherData();
              // print(context.read<WeatherProvider>().searchTerm);
            },
            child: Text("Ara")),
      ],
    );
  }
}

// class _searchTextController {}

