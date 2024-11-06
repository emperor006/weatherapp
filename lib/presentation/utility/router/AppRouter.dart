
import 'package:blocweatherapp/presentation/screens/HomeScreen.dart';
import 'package:blocweatherapp/presentation/screens/SplashScreens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => SplashScreens(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      // case '/third':
      //   return MaterialPageRoute(
      //     builder: (_) =>
      //         ThirdScreen(
      //           title: "Thirst Screen",
      //           color: Colors.greenAccent,
      //         ),

      default:
        return null;
    }
  }

}
