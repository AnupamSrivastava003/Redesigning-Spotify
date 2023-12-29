import 'package:flutter/material.dart';
import 'package:spotify_ui/screens/startingScreens/dark_lightMode.dart';

class gettingStarted extends StatelessWidget {
  const gettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        //background
        Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "images/hero1.png",
              fit: BoxFit.cover,
            )),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //spotify logo
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 90),
                  child: Image.asset("images/spotify.png")),
        
              //header text
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      child: const Text(
                    "Enjoy Listening To Music",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(218, 218, 218, 1),
                      fontSize: 25,
                    ),
                  )),
        
                  //text
                  Container(
                    padding: const EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 60),
                    child: const Text(
                      "Welcome to Spotify, where music meets magic! Immerse yourself in a world of rhythm and melody, where every note tells a story. ",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color.fromRGBO(121, 121, 121, 1),
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
        
                  //button
                  Container(
                    child: MaterialButton(
                      color: const Color.fromRGBO(66, 200, 60, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, 
                          MaterialPageRoute(builder: ((context) => darkLightMode()))
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
