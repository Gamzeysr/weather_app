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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Icon(
                  //   iconData,
                  //   color: Colors.yellow,
                  //   size: 50,
                  // ),
                  Icon(json.iconData),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text("City : "),
                  ),
                  Text(json.location.name),
                  const SizedBox(width: 5),
                  Text(json.current.tempC.round().toString() + "°C"),
                ],
              )

              // Text(json.current.windMph),
            ],
          ),
        ),
      ),
    );
  }
}
