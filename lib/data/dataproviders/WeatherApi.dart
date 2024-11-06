
import 'package:blocweatherapp/constants/ApiKeys.dart';
import 'package:http/http.dart' as http;

class WeatherApi{

  Future<String> getRawWeather(double lat,double lng )async{
   String ur= "api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=2778ff8e031df90a71d9fad3cf7c5dbf";
    var url = Uri.https('api.openweathermap.org', 'data/2.5/weather?q=London,uk&APPID=18054841fb00082cfe2ecfc41366fd11');
    final http.Response rawWeather= await http.get(url);
    print(rawWeather.body);
    return rawWeather.body;

  }

}