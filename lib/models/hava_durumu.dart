class Weather {
  Location location;
  Current current;

  Weather({
    required this.location,
    required this.current,
  });
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      location: Location.fromJson(json['location']),
      current: Current.fromJson(json['current']),
    );
  }
}

class Location {
  String name;
  String country;
  String localtime;
  Location({
    required this.name,
    required this.country,
    required this.localtime,
  });
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
      country: json['country'],
      localtime: json['localtime'],
    );
  }
}

class Current {
  double tempC;
  Condition condition;
  double windMph;
  double feelslikeC;

  Current({
    required this.tempC,
    required this.condition,
    required this.windMph,
    required this.feelslikeC,
  });
  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      tempC: json['temp_c'] as double,
      condition: Condition.fromJson(json['condition']),
      windMph: json['wind_mph'],
      feelslikeC: json['feelslike_c'],
    );
  }
}

class Condition {
  String text;
  String icon;

  Condition({
    required this.text,
    required this.icon,
  });
  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      text: json['text'],
      icon: json['icon'],
    );
  }
}



// class HavaDurumu {
//   double lat;
//   double lon;
//   String timezone;
//   double timezoneOffset;
//   Current current;
//   Daily daily;
//   HavaDurumu({
//     required this.lat,
//     required this.lon,
//     required this.timezone,
//     required this.timezoneOffset,
//     required this.current,
//     required this.daily,
//   });
//   factory HavaDurumu.fromJson(Map<String, dynamic> json) {
//     return HavaDurumu(
//       lat: json['lat'].toDouble(),
//       lon: json['lon'].toDouble(),
//       timezone: json['timezone'],
//       timezoneOffset: json['timezone_offset'].toDouble(),
//       current: json['current'],
//       daily: json['daily'],
//     );
//   }
// }

// class Current {
//   double dt;
//   double sunrise;
//   double sunset;
//   double temp;
//   double pressure;
//   double humidity;
//   double dewPoint;
//   double uvi;
//   double clouds;
//   double visibility;
//   double windSpeed;
//   double windDeg;
//   double windGust;
//   Current({
//     required this.dt,
//     required this.sunrise,
//     required this.sunset,
//     required this.temp,
//     required this.pressure,
//     required this.humidity,
//     required this.dewPoint,
//     required this.uvi,
//     required this.clouds,
//     required this.visibility,
//     required this.windSpeed,
//     required this.windDeg,
//     required this.windGust,
//   });

//   factory Current.fromJson(Map<String, dynamic> json) {
//     return Current(
//       dt: json['dt'].toDouble(),
//       sunrise: json['sunrise'].toDouble(),
//       sunset: json['sunset'].toDouble(),
//       temp: json['temp'].toDouble(),
//       pressure: json['pressure'].toDouble(),
//       humidity: json['humidity'].toDouble(),
//       dewPoint: json['dewPoint'].toDouble(),
//       uvi: json['uvi'].toDouble(),
//       clouds: json['clouds'].toDouble(),
//       visibility: json['visibility'].toDouble(),
//       windSpeed: json['windSpeed'].toDouble(),
//       windDeg: json['windDeg'].toDouble(),
//       windGust: json['windGust'].toDouble(),
//     );
//   }
// }

// class Weather {
//   int id;
//   String main;
//   String description;
//   String icon;
//   Weather({
//     required this.id,
//     required this.main,
//     required this.description,
//     required this.icon,
//   });
//   factory Weather.fromJson(Map<String, dynamic> json) {
//     return Weather(
//         id: json["id"],
//         main: json["main"],
//         description: json["description"],
//         icon: json["icon"]);
//   }
// }

// class Daily {
//   String summary;
//   Temp temp;
//   Weather weather;
//   double windSpeed;
//   FeelsLike feelsLike;
//   Daily({
//     required this.summary,
//     required this.temp,
//     required this.weather,
//     required this.windSpeed,
//     required this.feelsLike,
//   });
//   factory Daily.fromJson(Map<String, dynamic> json) {
//     return Daily(
//         summary: json["summary"],
//         temp: json["temp"],
//         weather: json["weather"],
//         windSpeed: json["wind_speed"],
//         feelsLike: json["feelsLike"]);
//   }
// }

// class Temp {
//   double day;
//   double min;
//   double max;
//   double night;
//   double eve;
//   double morn;
//   Temp({
//     required this.day,
//     required this.min,
//     required this.max,
//     required this.night,
//     required this.eve,
//     required this.morn,
//   });
//   factory Temp.fromJson(Map<String, dynamic> json) {
//     return Temp(
//         day: json["day"],
//         min: json["min"],
//         max: json["max"],
//         night: json["night"],
//         eve: json["eve"],
//         morn: json["morn"]);
//   }
// }

// class FeelsLike {
//   double day;
//   double night;
//   double eve;
//   double morn;
//   FeelsLike({
//     required this.day,
//     required this.night,
//     required this.eve,
//     required this.morn,
//   });
//   factory FeelsLike.fromJson(Map<String, dynamic> json) {
//     return FeelsLike(
//         day: json["day"],
//         night: json["night"],
//         eve: json["eve"],
//         morn: json["morn"]);
//   }
// }
