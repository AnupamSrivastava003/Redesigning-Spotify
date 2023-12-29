import 'package:flutter/material.dart';
import 'package:spotify_ui/components/fansAlsoLike.dart';
import 'package:spotify_ui/elements/listTileMusic.dart';

class PlaylistOfSongs extends StatefulWidget {
  final String cover;
  final String covername;
  PlaylistOfSongs({super.key,required this.cover, required this.covername});

  @override
  State<PlaylistOfSongs> createState() => _PlaylistOfSongsState();
}

class _PlaylistOfSongsState extends State<PlaylistOfSongs> {

  bool favoritetoggle = false;

  void _favorite() {
    setState(() {
      favoritetoggle = !favoritetoggle;
    });
  }

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
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
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
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        child: const Text(
                          "Following",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        onPressed: () {},
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
          )
          ),

          //India's Best
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "India's Best",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),


        const SliverToBoxAdapter(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    fansAlsoLike(
                      cover: "images/playlistcover20.png",
                      covername: "Sia, Sidhu Moose Wala, Diljit Sosanjh, Shubh, Kabir Das...",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover17.png",
                      covername: "Top Indian Female Artists of 2021",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover2.png",
                      covername: "Arijit Singh, Pritam, Anirudh Ravinchander, Mika Singh...",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover11.png",
                      covername: "Anirudh Ravinchander, Mika Singh, Sidhu Moose Wala...",
                    ),
                    fansAlsoLike(
                      cover: "images/playlistcover3.png",
                      covername: "Indian Indie Pop Rizz",
                    )
                  ],
                ))
          ),


        //Spacer
        SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),



          //popular
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.0),
              child: Row(
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                MusicListTile(
                  artistname: "Justin Bieber",
                  songname: "Love you 1000 Times",
                  imagename: "images/playlistcover17.png",
                ),
                MusicListTile(
                  artistname: "Jon Lajoie",
                  songname: "Everyday Normal Guy 2",
                  imagename: "images/playlistcover14.png",
                ),
                MusicListTile(
                  artistname: "Avenged Sevenfold",
                  songname: "Afterlife",
                  imagename: "images/playlistcover18.png",
                ),
                MusicListTile(
                  artistname: "Green Day",
                  songname: "21 Guns",
                  imagename: "images/playlistcover15.png",
                ),
                MusicListTile(
                  artistname: "Drake, Eminem, Kanye West",
                  songname: "Forever",
                  imagename: "images/playlistcover11.png",
                ),
              ],
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
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    width: 400,
                    height: 400,
                    child: Image.asset(
                      "images/hero5.png",
                      fit: BoxFit.cover,
                    )),
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

          const SliverToBoxAdapter(
              child: SizedBox(
            height: 30,
          )),

          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fans Also Like",
                    style: TextStyle(
                        fontSize: 25,
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
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      fansAlsoLike(
                        cover: "images/playlistcover1.png",
                        covername: "Zain Y",
                      ),
                      fansAlsoLike(
                        cover: "images/playlistcover2.png",
                        covername: "Eminem Show",
                      ),
                      fansAlsoLike(
                        cover: "images/playlistcover3.png",
                        covername: "Corpse",
                      ),
                      fansAlsoLike(
                        cover: "images/playlistcover4.png",
                        covername: "Black Pink",
                      ),
                      fansAlsoLike(
                        cover: "images/playlistcover5.png",
                        covername: "Kanye West",
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
