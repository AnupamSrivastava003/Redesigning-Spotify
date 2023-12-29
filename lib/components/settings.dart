import 'package:flutter/material.dart';
import 'package:spotify_ui/elements/glassRect2.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            GlassmorphicRectangle2(),
                            Column(
                              children: [

                                SizedBox(height: 20,),

                                ListTile(
                                  title: Text("Profile", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                                  trailing: IconButton(
                                    splashColor: Colors.green,
                                    onPressed: (){}, 
                                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,)),
                                ),


                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Divider(color: Colors.white.withOpacity(0.25),),
                                ),


                                ListTile(
                                  title: Text("Notification", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                                  trailing: IconButton(
                                    splashColor: Colors.green,
                                    onPressed: (){}, 
                                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,)),
                                ),


                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Divider(color: Colors.white.withOpacity(0.25),),
                                ),



                                ListTile(
                                  title: Text("Audio & Video", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                                  trailing: IconButton(
                                    splashColor: Colors.green,
                                    onPressed: (){}, 
                                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,)),
                                ),


                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Divider(color: Colors.white.withOpacity(0.25),),
                                ),


                                ListTile(
                                  title: Text("Settings", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                                  trailing: IconButton(
                                    splashColor: Colors.green,
                                    onPressed: (){}, 
                                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,)),
                                ),


                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Divider(color: Colors.white.withOpacity(0.25),),
                                ),



                                ListTile(
                                  title: Text("Playback", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                                  trailing: IconButton(
                                    splashColor: Colors.green,
                                    onPressed: (){}, 
                                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,)),
                                ),


                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Divider(color: Colors.white.withOpacity(0.25),),
                                ),



                                ListTile(
                                  title: Text("Data Saver & Storage", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                                  trailing: IconButton(
                                    splashColor: Colors.green,
                                    onPressed: (){}, 
                                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,)),
                                ),


                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Divider(color: Colors.white.withOpacity(0.25),),
                                ),


                                ListTile(
                                  title: Text("Security", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                                  trailing: IconButton(
                                    splashColor: Colors.green,
                                    onPressed: (){}, 
                                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,)),
                                ),


                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Divider(color: Colors.white.withOpacity(0.25),),
                                ),


                                ListTile(
                                  title: Text("Language", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                                  trailing: IconButton(
                                    splashColor: Colors.green,
                                    onPressed: (){}, 
                                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,)),
                                ),


                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Divider(color: Colors.white.withOpacity(0.25),),
                                ),



                                ListTile(
                                  title: Text("Dark Mode", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                                  trailing: IconButton(
                                    splashColor: Colors.green,
                                    onPressed: (){}, 
                                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,)),
                                ),


                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: Divider(color: Colors.white.withOpacity(0.25),),
                                ),



                                ListTile(
                                  title: Text("Logout", style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w500),),
                                  trailing: IconButton(
                                    splashColor: Colors.red,
                                    onPressed: (){}, 
                                    icon: Icon(Icons.logout, color: Colors.red,)),
                                ),
                              ]
                              ),
                          ],
                        );
  }
}