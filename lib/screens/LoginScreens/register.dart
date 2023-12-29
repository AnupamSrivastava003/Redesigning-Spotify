import 'package:flutter/material.dart';
import 'package:spotify_ui/screens/home.dart';
import 'package:spotify_ui/screens/support.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool toggle = false;

  void _toggler() {
    setState(() {
      if (toggle == false) {
        toggle = true;
      } else {
        toggle = false;
      }
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          iconSize: 20,
        ),
        title: Container(width: 120, child: Image.asset("images/spotify.png")),
        centerTitle: true,
      ),

      
      backgroundColor: const Color.fromRGBO(28, 27, 27, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              const Text(
                "Register",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "If You Need Any Support",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 189, 189, 189),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SupportScreen()));
                      },
                      child: const Text(
                        "Click Here",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(66, 200, 60, 1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
      
              //TextField - 1
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 18),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: const Color.fromRGBO(255, 255, 255, 0.14)),
                  ),
                  height: 80,
                  child: const TextField(
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    cursorColor: Colors.green,
                    textCapitalization: TextCapitalization.none,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        hintText: "Full Name",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                        contentPadding: EdgeInsets.all(15)),
                  ),
                ),
              ),
              
              //Textflied - 2 
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0,),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: const Color.fromRGBO(255, 255, 255, 0.14)),
                  ),
                  height: 80,
                  child: const TextField(
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    cursorColor: Colors.green,
                    textCapitalization: TextCapitalization.none,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        hintText: "Enter Email",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                        contentPadding: EdgeInsets.all(15)),
                  ),
                ),
              ),
      
              //TextField - 3
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 18),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: const Color.fromRGBO(255, 255, 255, 0.14)),
                  ),
                  height: 80,
                  child: TextField(
                    obscureText: toggle ? false : true,
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    cursorColor: Colors.green,
                    textCapitalization: TextCapitalization.none,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: _toggler,
                            icon: toggle
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off)),
                        suffixIconColor: Colors.white.withOpacity(0.14),
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                        contentPadding: EdgeInsets.all(15)),
                  ),
                ),
              ),
      
              //button
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                child: MaterialButton(
                  color: const Color.fromRGBO(66, 200, 60, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric( vertical: 30),
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HomeScreen())));
                  },
                ),
              ),
      
      
              //divider
              Padding(
                padding: const EdgeInsets.all(34.0),
                child: Divider(color: Colors.white.withOpacity(0.5),),
              ),
      
      
              // iconbuttons
      
              Padding(
                padding: const EdgeInsets.only(right: 65, left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  //icon button 1
                  IconButton(onPressed: (){}, 
                  icon: Icon(Icons.apple, color: Colors.white, size: 35,)),
              
                  Text("or",style: TextStyle(color: Colors.white.withOpacity(0.4)),),
      
                  //icon button 2
                  IconButton(onPressed: (){}, 
                  icon: Icon(Icons.flutter_dash_outlined, color: Colors.white, size: 35,))
                ],),
              ),
      
      
              SizedBox(height: 34,),
              
              //last text
      
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
      
                Text("Do You Have An Account?", style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.w600),),
      
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, 
                child: Text("Sign In", style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600),),)
              ],)
      
      
            ],
          ),
        ),
      ),
    );
  }
}
