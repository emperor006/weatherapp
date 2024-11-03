
import 'package:blocweatherapp/data/dataproviders/WeatherApi.dart';

import '../models/Weather.dart';
import 'dart:convert';


class WeatherRepository{

  Future<Weather>getWeatherForLocation({required double lat,required double lng,required double date})async{
    final String rawWeather=await WeatherApi().getRawWeather(lat, lng, date);
    final Map<String, dynamic> weatherJson = jsonDecode(rawWeather);
    Weather weather =Weather.fromJson(weatherJson);
    return weather;

  }




}