import 'package:flutter/material.dart';

import 'package:spotify_ui/components/PlayListTile.dart';

class SingerProfile extends StatefulWidget {
  final String cover;
  final String covername;
  SingerProfile({super.key, required this.cover, required this.covername});

  @override
  State<SingerProfile> createState() => _SinglerDetailScreenState();
}

class _SinglerDetailScreenState extends State<SingerProfile> {
  List<String> imagelocation = [
    "images/playlistcover1.png",
    'images/songcover2.png',
    'images/songcover3.png',
    'images/songcover1.png',
    'images/songcover2.png',
    'images/songcover3.png',
    // Add more image URLs as needed
  ];

  bool followTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 27, 27, 1),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromRGBO(27, 27, 27, 1),
            elevation: 0,
            floating: true, //scroll up kerne pe immediately aayega
            pinned: true, //app bar will be pinned always
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Stack(
                children: [
                  // Image widget
                  Image.asset(
                    widget.cover,
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),

                  // Dark shade container
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color.fromRGBO(27, 27, 27, 1)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.covername,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "2 Album   67 Tracks",
                    style: TextStyle(
                        color: Color.fromARGB(255, 207, 207, 207),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "Followers",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "23.4M",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  width: 90,
                ),
                Column(
                  children: [
                    Text(
                      "Following",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "206",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          )),

          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color:
                              followTapped ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        child: Text(
                          followTapped ? "Following" : "Follow",
                          style: TextStyle(
                              fontSize: 14,
                              color:
                                  followTapped ? Colors.black : Colors.white),
                        ),
                        onPressed: () {
                          setState(() {
                            followTapped = !followTapped;
                          });
                        },
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white,
                        ))
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shuffle,
                          color: Colors.white,
                        )),
                    Container(
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(66, 200, 60, 1),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.play_arrow),
                        onPressed: () {},
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),

          //Spacer
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),

          //Playlists
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.0),
              child: Row(
                children: [
                  Text(
                    "Playlists",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: Column(
              children: [
                PlayListTile(
                  playlistname: "Playlist 1",
                  playlistcover: "images/playlistcover15.png",
                ),
                PlayListTile(
                  playlistname: "Playlist 2",
                  playlistcover: "images/playlistcover14.png",
                ),
                PlayListTile(
                  playlistname: "Playlist 3",
                  playlistcover: "images/playlistcover13.png",
                ),
                PlayListTile(
                  playlistname: "Playlist 4",
                  playlistcover: "images/playlistcover12.png",
                ),
                PlayListTile(
                  playlistname: "Playlist 5",
                  playlistcover: "images/playlistcover11.png",
                ),
              ],
            ),
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),

          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: () {
                _showDropUpScreen(context);
              },
              child: Stack(
                alignment: Alignment.center,
                children: [

                  Container(
                      width: 400,
                      height: 400,
                      child: Image.asset(
                        widget.cover,
                        fit: BoxFit.cover,
                      )
                  ),



                  // Dark shade container
                  Container(

                      width: 400,
                      height: 400,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color.fromRGBO(27, 27, 27, 1)
                        ],
                      ),
                    ),
                  ),


                  Container(
                    width: 350,
                    height: 350,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.verified,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Verified Artist",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 18.0),
                                  child: Text(
                                    "7,04,45,465  ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Text(
                                  "MONTHLY LISTENERS",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Text(
                              "Apart from being one of the best-selling artists in music history, Billie is one of the greatest singer...",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(
              child: SizedBox(
            height: 200,
          )),
        ],
      ),
    );
  }

  void _showDropUpScreen(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context)
              .size
              .height, //  MediaQuery.of(context).size.height   for full screen
          color: Color.fromRGBO(27, 27, 27, 1),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: Image.asset(
                    widget.cover,
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: TextStyle(
                    color: Colors.white,
                    height: 2,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        );
      },
      isScrollControlled: true, // full screen kerna ho toh
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
    );
  }
}
