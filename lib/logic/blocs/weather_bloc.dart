import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/Weather.dart';
import '../../data/respositories/WeatherRespositories.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc(this.weatherRepository) : super(WeatherFetchState()) {
    on<FetchWeatherEvent>((event, emit) async {
      emit(WeatherFetchState());

      try {
        //final weather = await weatherRepository.getWeatherForLocation(lat: event.lat,lng: event.lng, date: event.date);
      //  emit(WeatherFetchCompleted(weather));
      } catch (error) {
        emit(OnErrorState("Could not fetch weather data"));
      }
    });
  }
}


