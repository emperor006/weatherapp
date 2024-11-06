part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent {}

final class WeatherLoadedEvent extends WeatherEvent {}

final class FetchWeatherEvent extends WeatherEvent {
  final double lat;
  final double lng;
  final double date;

  FetchWeatherEvent({required this.lat,required this.lng,required this.date});
}

final class OnFetchErrorEvent extends WeatherEvent {}



