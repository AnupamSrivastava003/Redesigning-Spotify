import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(13, 12, 12, 0),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 90),
          child: Image.asset("images/spotify.png")),
      ),
    );
  }
}