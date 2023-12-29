import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/screens/startingScreens/gettingStarted.dart';
import 'package:spotify_ui/screens/startingScreens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: const splashScreen(),
        backgroundColor: const Color.fromARGB(13, 12, 12, 0),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
        nextScreen: const gettingStarted(),
        ), 
    );
  }
}