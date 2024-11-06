import 'package:blocweatherapp/logic/blocs/weather_bloc.dart';
import 'package:blocweatherapp/presentation/utility/router/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/respositories/WeatherRespositories.dart';

void main() {
  runApp(MyApp(router: AppRouter(),));
}

class MyApp extends StatelessWidget {

  AppRouter router;

  MyApp({super.key, required this.router});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherBloc>(
      create: (context) => WeatherBloc(WeatherRepository()),
      child: MaterialApp(
        title: 'Weather',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        onGenerateRoute: router.onGenerateRoute,

      ),
    );
  }
}

