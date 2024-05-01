import 'package:flutter/material.dart';
import 'package:weather_app/models/hava_durumu.dart';

class WeatherCard extends StatelessWidget {
  final Weather json;

  const WeatherCard({super.key, required this.json});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width) /
          3, //ekran genişliğinin üçte biri

      child: Card(
        child: Column(
          children: [
            Text(json.location.name),
            Text(json.location.country),
            Text(json.current.tempC.toString()),
          ],
        ),
      ),
    );
  }
}
