import 'dart:async';

import 'package:blocweatherapp/presentation/widgets/shinytext.dart';
import 'package:flutter/material.dart';

import '../widgets/rotatingicon.dart';
import 'HomeScreen.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  HomeScreen()));
    });
    super.initState();
  }

  double turns =0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.green,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RotatingWidget(),

           const SizedBox(height: 30,),
            const Text("Block Weather", style: TextStyle(fontWeight: FontWeight.bold),),
            ShinyText("Bloc Weather")

          ],
        ),
      ),
    );
  }
}
