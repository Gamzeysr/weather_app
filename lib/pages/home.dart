import 'package:flutter/material.dart';
import 'package:weather_app/services/hava_durumu_servisi.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          FutureBuilder(
              future: getHavaDurumuBySehirAdi(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Hata oluştu! ${snapshot.error}');
                } else if (snapshot.hasData) {
                  final data = snapshot.data!;
                  return Text('data başarılı...');
                } else {
                  return CircularProgressIndicator();
                }
              })
        ],
      ),
    ));
  }
}
