import 'package:flutter/material.dart';
import 'package:spotify_ui/elements/button.dart';
import 'package:spotify_ui/screens/LoginScreens/chooseSignInOption.dart';

class darkLightMode extends StatefulWidget {
  const darkLightMode({super.key});

  @override
  State<darkLightMode> createState() => _darkLightModeState();
}

class _darkLightModeState extends State<darkLightMode> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        //background
        SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "images/hero2.png",
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
                  const Text(
                    "Choose Mode",
                    style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(218, 218, 218, 1),
                  fontSize: 25,
                    ),
                  ),

                  //text
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          
                          Button(iconName: Icon(Icons.dark_mode_outlined, size: 40, color: Colors.white,), mode: "Dark Mode",),

                          Button(iconName: Icon(Icons.light_mode_outlined, size: 40, color: Colors.white,), mode: "Light Mode",)
                          
                        ]),
                  ),

                  //button
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: const Color.fromRGBO(66, 200, 60, 1),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 30),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder:(context) => chooseSignInOptionScreen(),));
                    },
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
