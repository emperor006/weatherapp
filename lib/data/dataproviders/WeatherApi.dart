
import 'package:blocweatherapp/constants/ApiKeys.dart';
import 'package:http/http.dart' as http;

class WeatherApi{

  Future<String> getRawWeather(double lat,double lng, double date )async{
//    String ur= "https://api.openweathermap.org/data/3.0/onecall/day_summary?lat=$lat&lon=$lng&date=$date&appid={$apiKey}";
    var url = Uri.https('api.openweathermap.org', 'data/3.0/onecall/day_summary?lat=$lat&lon=$lng&date=$date&appid={${ApiKeys.weatherApiKey}}');
    final http.Response rawWeather= await http.get(url);
    return rawWeather.body;

  }

}