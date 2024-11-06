
import 'dart:async';

import 'package:blocweatherapp/logic/blocs/weather_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Position? _currentPosition;
  late StreamSubscription<Position> _positionStream;


  @override
  void dispose() {
    _positionStream.cancel();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    print("Home screen");
    return  Scaffold(
      body: Container(
        width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          ElevatedButton(onPressed: (){
            context.read<WeatherBloc>().add(FetchWeatherEvent(lat: 37.43296265331129,lng: -122.08832357078792,date: 12829292929));
          }, child: const Text('Trigger BlocEvent')),


       const Text("Today's weather is", style: TextStyle(color: Colors.black),),
          const SizedBox(height: 30,),
          BlocConsumer<WeatherBloc, WeatherState>(
              builder: (context,state){
                print(state.toString());
                if(state is WeatherFetchState){
                  return const CircularProgressIndicator();
                }else if(state is WeatherFetchCompleted){
                  Text(state.weather.temperature!.afternoon.toString(), style: const TextStyle(fontWeight: FontWeight.bold), );
                }else if(state is OnErrorState){
                  Text(state.message, style: const TextStyle(color: Colors.red), );

                }
                return const Text("An error occurred");
              },
              listener: (context, state){}

          )



      ],),
    ),);
  }
}



