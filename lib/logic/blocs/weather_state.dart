part of 'weather_bloc.dart';

@immutable
sealed class WeatherState {}

final class WeatherFetchState extends WeatherState {
  // double lat;
  // double lng;
  // double date;
  //WeatherFetchState({required this.date, required this.lng, required this.lat});

}

final class WeatherFetchCompleted extends WeatherState {
  Weather weather;
  WeatherFetchCompleted(this.weather);

}

final class OnErrorState extends WeatherState {
  String message;
  OnErrorState(this.message);
}


