part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent {}

final class WeatherLoadedEvent extends WeatherEvent {}

final class FetchWeatherEvent extends WeatherEvent {
  final double lat;
  final double lng;
  final double date;

  FetchWeatherEvent(this.lat, this.lng, this.date);
}

final class OnFetchErrorEvent extends WeatherEvent {}



