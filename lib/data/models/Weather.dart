
import 'CloudCover.dart';
import 'Precipitation.dart';
import 'Temperature.dart';
import 'Wind.dart';

class Weather {
  int? lat;
  int? lon;
  String? tz;
  String? date;
  String? units;
  CloudCover? cloudCover;
  CloudCover? humidity;
  Precipitation? precipitation;
  Temperature? temperature;
  CloudCover? pressure;
  Wind? wind;

  Weather(
      {
        this.lat,
        this.lon,
        this.tz,
        this.date,
        this.units,
        this.cloudCover,
        this.humidity,
        this.precipitation,
        this.temperature,
        this.pressure,
        this.wind});

  Weather.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
    tz = json['tz'];
    date = json['date'];
    units = json['units'];
    cloudCover = json['cloud_cover'] != null
        ? new CloudCover.fromJson(json['cloud_cover'])
        : null;
    humidity = json['humidity'] != null
        ? new CloudCover.fromJson(json['humidity'])
        : null;
    precipitation = json['precipitation'] != null
        ? new Precipitation.fromJson(json['precipitation'])
        : null;
    temperature = json['temperature'] != null
        ? new Temperature.fromJson(json['temperature'])
        : null;
    pressure = json['pressure'] != null
        ? new CloudCover.fromJson(json['pressure'])
        : null;
    wind = json['wind'] != null ? new Wind.fromJson(json['wind']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['tz'] = this.tz;
    data['date'] = this.date;
    data['units'] = this.units;
    if (this.cloudCover != null) {
      data['cloud_cover'] = this.cloudCover!.toJson();
    }
    if (this.humidity != null) {
      data['humidity'] = this.humidity!.toJson();
    }
    if (this.precipitation != null) {
      data['precipitation'] = this.precipitation!.toJson();
    }
    if (this.temperature != null) {
      data['temperature'] = this.temperature!.toJson();
    }
    if (this.pressure != null) {
      data['pressure'] = this.pressure!.toJson();
    }
    if (this.wind != null) {
      data['wind'] = this.wind!.toJson();
    }
    return data;
  }
}


