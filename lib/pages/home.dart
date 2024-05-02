import 'package:flutter/material.dart';
import 'package:weather_app/services/hava_durumu_servisi.dart';
import 'package:weather_app/widgets/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const SearchBar(),
          FutureBuilder(
              future: getHavaDurumuBySehirAdi("ankara"),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Hata oluştu! ${snapshot.error}');
                } else if (snapshot.hasData) {
                  final data = snapshot.data!;

                  return ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return WeatherCard(json: data);
                    },
                    itemCount: 1,
                  );
                } else {
                  return CircularProgressIndicator();
                }
              })
        ],
      ),
    ));
  }
}
