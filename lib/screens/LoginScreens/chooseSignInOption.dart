import 'package:flutter/material.dart';
import 'package:spotify_ui/screens/LoginScreens/register.dart';
import 'package:spotify_ui/screens/LoginScreens/signIn.dart';

class chooseSignInOptionScreen extends StatelessWidget {
  const chooseSignInOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(28, 27, 27, 1),
      
      body: Stack(
        children: [
            //background element
            Container(
              alignment: Alignment.bottomRight,
              child: Image.asset("images/bgeffect1.png",)),

            Container(
              alignment: Alignment.topRight,
              child: Image.asset("images/bgeffect2.png",)),

            Container(
              alignment: Alignment.bottomLeft,
              child: Image.asset("images/hero3.png",)),

            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: Row(children: [
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        }, 
                        icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,size: 20,))
                    ],),
                  ),
                  
                  // logo
                  Container(
                    padding: EdgeInsets.all(90),
                    child: Image.asset("images/spotify.png")
                    ),
                  
                  Text("Enjoy Listening To Music", style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),),
            
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 42),
                    child: Text("Spotify is a proprietary Swedish audio streaming and media services provider ", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(160, 160, 160, 1),
                    ),
                    textAlign: TextAlign.center,),
                  ),
            
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: MaterialButton(
                            color: const Color.fromRGBO(66, 200, 60, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(context, 
                                MaterialPageRoute(builder: ((context) => RegisterScreen()))
                              );
                            },
                          ),
                        ),
            
                        SizedBox(width: 40,),
            
                        MaterialButton(
                          color: const Color.fromRGBO(28, 27, 27, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding:
                              const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context, 
                              MaterialPageRoute(builder: ((context) => SignInScreen()))
                            );
                          },
                        ),
                    ],
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}