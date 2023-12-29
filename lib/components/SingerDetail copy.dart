import 'package:flutter/material.dart';
import 'package:spotify_ui/elements/ArtistCover.dart';
import 'package:spotify_ui/elements/listTileMusic.dart';

class SinglerDetailScreen extends StatefulWidget {
  final String cover;
  final String covername;
  SinglerDetailScreen(
      {super.key, required this.cover, required this.covername});

  @override
  State<SinglerDetailScreen> createState() => _SinglerDetailScreenState();
}

class _SinglerDetailScreenState extends State<SinglerDetailScreen> {
  List<String> imagelocation = [
    "images/playlistcover1.png",
    'images/songcover2.png',
    'images/songcover3.png',
    'images/songcover1.png',
    'images/songcover2.png',
    'images/songcover3.png',
    // Add more image URLs as needed
  ];

  bool addToPlaylistTapped = false;
  bool downloadTapped = false;
  bool shareTrapped = false;

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
              title: Text(
                widget.covername,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),

          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: addToPlaylistTapped ? Colors.white : const Color.fromRGBO(27, 27, 27, 1),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(70)),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  addToPlaylistTapped = !addToPlaylistTapped;
                                });
                              }, icon: Icon(Icons.add, color: addToPlaylistTapped ? Colors.black : Colors.white,))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: downloadTapped ? Colors.white : const Color.fromRGBO(27, 27, 27, 1),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(70)),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  downloadTapped = !downloadTapped;
                                });
                              }, icon: Icon(Icons.download, color: downloadTapped ? Colors.black : Colors.white,))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        height: 50,
                        width: 50,
                          decoration: BoxDecoration(
                            color: shareTrapped ? Colors.white : const Color.fromRGBO(27, 27, 27, 1),
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(70)),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  shareTrapped = !shareTrapped;
                                });
                              }, icon: Icon(Icons.share, color: shareTrapped ? Colors.black : Colors.white,))),
                    ),
                    
                    
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white,
                        )),
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
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(66, 200, 60, 1),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        padding: const EdgeInsets.all(3),
                        icon: const Icon(Icons.play_arrow, size: 40,),
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

          

          const SliverToBoxAdapter(
            child: Column(
              children: [
                MusicListTile(
                  artistname: "Justin Bieber",
                  songname: "Love you 1000 Times",
                  imagename: "images/playlistcover15.png",
                ),
                MusicListTile(
                  artistname: "Jon Lajoie",
                  songname: "Everyday Normal Guy 2",
                  imagename: "images/playlistcover14.png",
                ),
                MusicListTile(
                  artistname: "Avenged Sevenfold",
                  songname: "Afterlife",
                  imagename: "images/playlistcover13.png",
                ),
                MusicListTile(
                  artistname: "Green Day",
                  songname: "21 Guns",
                  imagename: "images/playlistcover12.png",
                ),
                MusicListTile(
                  artistname: "Drake, Eminem, Kanye West",
                  songname: "Forever",
                  imagename: "images/playlistcover11.png",
                ),

                MusicListTile(
                  artistname: "Avenged Sevenfold",
                  songname: "Afterlife",
                  imagename: "images/playlistcover13.png",
                ),
                MusicListTile(
                  artistname: "Green Day",
                  songname: "21 Guns",
                  imagename: "images/playlistcover12.png",
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

          const SliverToBoxAdapter(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ArtistsCover(
                        cover: "images/travis.png",
                        covername: "Travis Scott",
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
                        cover: "images/kanye.png",
                        covername: "Kanye West",
                      ),
                      ArtistsCover(
                        cover: "images/playlistcover21.png",
                        covername: "Billie Eilish",
                      )
                    ],
                  )
                  ),
                  
                  ),


                  SliverToBoxAdapter(
                    child: SizedBox(height: 50,),
                  )
        ],
      ),
    );
  }
}
