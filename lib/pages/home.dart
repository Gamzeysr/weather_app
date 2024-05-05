import 'package:flutter/material.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/services/hava_durumu_servisi.dart';
import 'package:weather_app/widgets/card.dart';
import 'package:weather_app/widgets/search_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const MySearchBar(),
          // FutureBuilder(
          //     future: getHavaDurumuBySehirAdi(
          //         context.read<WeatherProvider>().searchTerm),
          //     builder: (context, snapshot) {
          //       if (snapshot.hasError) {
          //         return Text('Hata oluştu! ${snapshot.error}');
          //       } else if (snapshot.hasData) {
          //         final data = snapshot.data!;

          //         return ListView.builder(
          //           itemCount: 1,
          //           shrinkWrap: true,
          //           itemBuilder: (context, index) {
          //             return WeatherCard(json: data);
          //           },
          //         );
          //       } else {
          //         return CircularProgressIndicator();
          //       }
          //     })
          Consumer<WeatherProvider>(builder: (context, provider, _) {
            return FutureBuilder(
              future: getHavaDurumuBySehirAdi(provider.searchTerm),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Hata oluştu! ${snapshot.error}');
                } else if (snapshot.hasData) {
                  final data = snapshot.data!;

                  return context.read<WeatherProvider>().sonuclar.length > 0
                      ? ListView.builder(
                          shrinkWrap: true,
                          itemCount:
                              context.read<WeatherProvider>().sonuclar.length,
                          itemBuilder: (context, index) {
                            return WeatherCard(
                                json: context
                                    .read<WeatherProvider>()
                                    .sonuclar[index]);
                          })
                      : WeatherCard(json: data);
                } else {
                  return CircularProgressIndicator();
                }
              },
            );
          }),
        ],
      ),
    ));
  }
}
