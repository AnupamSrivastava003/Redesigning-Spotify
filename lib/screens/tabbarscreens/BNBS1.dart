import 'package:flutter/material.dart';
import 'package:spotify_ui/elements/ArtistCover.dart';
import 'package:spotify_ui/components/CurrentSongPlaying.dart';
import 'package:spotify_ui/components/fansAlsoLike.dart';
import 'package:spotify_ui/elements/listTileMusic.dart';
import 'package:spotify_ui/components/songs.dart';
import 'package:spotify_ui/components/videoPlayer.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  List<String> imagelocation = [
    "images/songcover1.png",
    'images/songcover2.png',
    'images/songcover3.png',
    'images/songcover1.png',
    'images/songcover2.png',
    'images/songcover3.png',
    // Add more image URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 35,
              color: Colors.white.withOpacity(0.8),
            )),
        centerTitle: true,
        title: Container(width: 120, child: Image.asset("images/spotify.png")),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                size: 30,
                color: Colors.white.withOpacity(0.8),
              ))
        ],
      ),
      backgroundColor: const Color.fromRGBO(28, 27, 27, 1),
      body: CustomScrollView(scrollDirection: Axis.vertical, slivers: [
        //first green section
        SliverToBoxAdapter(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CurrentSongPlayingScreen(
                          artistname: "Billie Eilish",
                          imagename: "images/playlistcover21.png",
                          songname: "Happier Than Ever")));
            },
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                //green bg
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
                  width: double.infinity,
                  height: 145,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(66, 200, 60, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),

                //text and image
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //text side
                      const Padding(
                        padding: EdgeInsets.only(top: 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //text1
                            Text(
                              "New Song",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),

                            //text2
                            Text(
                              "Happier Than \nEver",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),

                            //text3
                            Text(
                              "Billie Eilish",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),

                      //image side
                      Image.asset(
                        "images/hero4.png",
                        scale: 1.2,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),

        //recently played
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Text(
                  "Recently played",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    "See More",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),

        const SliverToBoxAdapter(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Songs(
                      imagename: "images/songcover1.png",
                      artistname: "Coldplay",
                      songname: "Yellow Season",
                    ),
                    Songs(
                      imagename: "images/songcover2.png",
                      artistname: "Lil Wayne",
                      songname: "Bloodmare",
                    ),
                    Songs(
                      imagename: "images/songcover3.png",
                      artistname: "Doja Cat ft. SZA",
                      songname: "Kiss Me More",
                    ),
                    Songs(
                      imagename: "images/songcover4.png",
                      artistname: "Eminem",
                      songname: "Stan",
                    ),
                    Songs(
                      imagename: "images/songcover5.png",
                      artistname: "Kanye West",
                      songname: "Flashing Lights",
                    ),
                  ],
                ))),

        //Today's top hits
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Text(
                  "Today's top hits",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    "See More",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),

        //listtile
        const SliverToBoxAdapter(
          child: Column(
            children: [
              MusicListTile(
                artistname: "Justin Bieber",
                songname: "Love you 1000 Times",
                imagename: "images/playlistcover1.png",
              ),
              MusicListTile(
                artistname: "Jon Lajoie",
                songname: "Everyday Normal Guy 2",
                imagename: "images/playlistcover12.png",
              ),
              MusicListTile(
                artistname: "Avenged Sevenfold",
                songname: "Afterlife",
                imagename: "images/playlistcover2.png",
              ),
              MusicListTile(
                artistname: "Green Day",
                songname: "21 Guns",
                imagename: "images/playlistcover3.png",
              ),
              MusicListTile(
                artistname: "Drake, Eminem, Kanye West",
                songname: "Forever",
                imagename: "images/playlistcover4.png",
              ),
            ],
          ),
        ),

        //Artist you follow
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Text(
                  "Artist you follow",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    "See More",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),

        const SliverToBoxAdapter(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ArtistsCover(
                      cover: "images/playlistcover21.png",
                      covername: "Billie Elish",
                    ),
                    ArtistsCover(
                      cover: "images/eminem.png",
                      covername: "Eminem",
                    ),
                    ArtistsCover(
                      cover: "images/doja.png",
                      covername: "Doja Cat",
                    ),
                    ArtistsCover(
                      cover: "images/travis.png",
                      covername: "Travis Scott",
                    ),
                    ArtistsCover(
                      cover: "images/kanye.png",
                      covername: "Kanye West",
                    )
                  ],
                ))),

        //you top mixes
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Text(
                  "Your top mixes",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    "See More",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),

        const SliverToBoxAdapter(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    fansAlsoLike(
                      cover: "images/playlistcover2.png",
                      covername: "Zain Y",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover3.png",
                      covername: "Eminem Show",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover4.png",
                      covername: "Corpse",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover5.png",
                      covername: "Black Pink",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover6.png",
                      covername: "Kanye West",
                    )
                  ],
                ))),

        //Uniquely yours
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Text(
                  "Uniquely yours",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    "See More",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),

        const SliverToBoxAdapter(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    fansAlsoLike(
                      cover: "images/playlistcover7.png",
                      covername: "Songs you love right now",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover8.png",
                      covername: "On Repeat",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover9.png",
                      covername: "Time Capsule",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover10.png",
                      covername: "Repeat Rewind",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover11.png",
                      covername: "Liked Songs",
                    )
                  ],
                ))),

        //India's Best
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Text(
                  "India's best",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    "See More",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),

        const SliverToBoxAdapter(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    fansAlsoLike(
                      cover: "images/playlistcover11.png",
                      covername:
                          "Sia, Sidhu Moose Wala, Diljit Sosanjh, Shubh, Kabir Das...",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover12.png",
                      covername: "Top Indian Female Artists of 2021",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover13.png",
                      covername:
                          "Arijit Singh, Pritam, Anirudh Ravinchander, Mika Singh...",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover14.png",
                      covername:
                          "Anirudh Ravinchander, Mika Singh, Sidhu Moose Wala...",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover15.png",
                      covername: "Indian Indie Pop Rizz",
                    )
                  ],
                ))),

        //Blends
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Text(
                  "Blends",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    "See More",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),

        const SliverToBoxAdapter(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    fansAlsoLike(
                      cover: "images/playlistcover16.png",
                      covername:
                          "Sia, Sidhu Moose Wala, Diljit Sosanjh, Shubh, Kabir Das...",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover17.png",
                      covername: "Top Indian Female Artists of 2021",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover18.png",
                      covername:
                          "Arijit Singh, Pritam, Anirudh Ravinchander, Mika Singh...",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover19.png",
                      covername:
                          "Anirudh Ravinchander, Mika Singh, Sidhu Moose Wala...",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover20.png",
                      covername: "Indian Indie Pop Rizz",
                    )
                  ],
                ))),

        //Story
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Text(
                  "Story",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Text(
                    "See More",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),

        SliverToBoxAdapter(
          child: VideoApp(
            artistname: "Eminem",
            cover: "images/eminem.png",
            covername: "",
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              color: Colors.white.withOpacity(0.2),
            ),
          ),
        ),



        //Last Spacer
        const SliverToBoxAdapter(
          child: SizedBox(height: 120),
        )
      ]),
    );
  }
}
