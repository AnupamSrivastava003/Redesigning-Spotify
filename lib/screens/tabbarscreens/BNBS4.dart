import 'package:flutter/material.dart';
import 'package:spotify_ui/components/settings.dart';
import 'package:spotify_ui/components/yourprofile.dart';

class personalInfoScreen extends StatefulWidget {
  const personalInfoScreen({super.key});

  @override
  State<personalInfoScreen> createState() => _personalInfoScreenState();
}

class _personalInfoScreenState extends State<personalInfoScreen> {
  bool followTapped = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 27, 27, 1),
      body: CustomScrollView(
        slivers: [
        // Image widget
        SliverToBoxAdapter(
          child: Container(
            height: 1500,
            child: Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  "images/profile.jpg",
                  fit: BoxFit.cover,
                  height: 400,
                  width: double.infinity,
                ),
              ),


              Positioned(
                  top: 300,
                  left: 20,
                  right: 20,
                  child: Container(
                    child: Column(
                      children: [
                        
                        YourProfile(),
                  
                        
                        SizedBox(
                          height: 30,
                        ),
                        
                        Settings(),
                      
                      
                      ],
                    ),
                  ))
            ]),
          ),
        ),     
      ]),
    );
  }
}
