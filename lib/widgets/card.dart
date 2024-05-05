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
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            // Şehir ve kart numarasını tutmak için bir Column ekleyin
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sunny),
                  Text("City : "),
                  Text(json.location.name),
                ],
              )
              // Text(json.current.feelslikeC.toString()),

              // Text(json.current.windMph),
            ],
          ),
        ),
      ),
    );
  }
}
