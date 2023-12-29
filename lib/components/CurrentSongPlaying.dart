import 'package:flutter/material.dart';
import 'package:spotify_ui/components/lyrics.dart';

class CurrentSongPlayingScreen extends StatefulWidget {
  final String songname;
  final String artistname;
  final String imagename;
  const CurrentSongPlayingScreen({super.key, required this.artistname, required this.imagename, required this.songname});

  @override
  State<CurrentSongPlayingScreen> createState() =>
      _CurrentSongPlayingScreenState();
}

class _CurrentSongPlayingScreenState extends State<CurrentSongPlayingScreen>
    with SingleTickerProviderStateMixin {
  double _sliderValue = 0.0;
  bool favoritetoggle = false;

  //create the animation ocntroller
  late AnimationController _animationController;

  

  //initilize the controller
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  bool videoPlaying = true;
  void _iconTapped() {
    if (videoPlaying == false) {
      _animationController.reverse();
      videoPlaying = true;
    } else {
      _animationController.forward();
      videoPlaying = false;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Now playing",
          style: TextStyle(
              fontSize: 18,
              color: Colors.white.withOpacity(0.8),
              fontWeight: FontWeight.w600),
        ),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Cover
          ClipRRect(
            
              child: Image.asset(
                widget.imagename,
                fit: BoxFit.cover,
                height: 350,
                width: 350,
              )),

          //name and heart
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.songname,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(widget.artistname,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 20,
                            fontWeight: FontWeight.w300))
                  ],
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        favoritetoggle = !favoritetoggle;
                      });
                    },
                    icon: Icon(
                      favoritetoggle ? Icons.favorite : Icons.favorite_border_outlined,
                      color: Color.fromRGBO(66, 200, 60, 1),
                      size: 30,
                    ))
              ],
            ),
          ),


          //roller
          Slider(
            value: _sliderValue,
            onChanged: (double value) {
              setState(() {
                _sliderValue = value;
              });
            },
            activeColor: const Color.fromARGB(255, 221, 221, 221),
            inactiveColor: Colors.grey.shade800,
            min: 0.0,
            max: 4.02,
            label: '$_sliderValue', // Display the current value as a label
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _sliderValue.toStringAsFixed(1),
                  style: const TextStyle(
                      color: Color.fromARGB(255, 206, 206, 206),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const Text(
                  "4:02",
                  style: TextStyle(
                      color: Color.fromARGB(255, 206, 206, 206),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 40,
          ),
          //play pause

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.replay,
                  color: Colors.white,
                  size: 28,
                ),
                const Icon(
                  Icons.skip_previous,
                  color: Colors.white,
                  size: 28,
                ),
                GestureDetector(
                  onTap: _iconTapped,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(66, 200, 60, 1)),
                    child: AnimatedIcon(
                      icon: AnimatedIcons.pause_play,
                      color: Colors.white,
                      progress: _animationController,
                      size: 50,
                    ),
                  ),
                ),
                const Icon(
                  Icons.skip_next,
                  color: Colors.white,
                  size: 28,
                ),
                const Icon(
                  Icons.shuffle,
                  color: Colors.white,
                  size: 28,
                ),
              ],
            ),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
          
                Text("Lyrics", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),),
          
          
                IconButton(
                  padding: EdgeInsets.only(right: 0),
                    onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => LyricsScreen(songname: widget.songname, artistname: widget.artistname, imagename: widget.imagename)));
                    },
                    icon: const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                      size: 42,
                    )
                )
              ],
            ),
          ),

          SizedBox(height: 20,)
        ],
      ),
    );
  }

  // void _showDropUpScreen(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     builder: (BuildContext context) {
  //       return SingleChildScrollView(
  //         child: Container(
  //           height: MediaQuery.of(context).size.height, // Set the height as needed
  //           color: Colors.white,
  //           child: Center(
  //             child: LyricsScreen(),
  //           ),
  //         ),
  //       );
  //     },
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
  //     ),
  //   );
  // }
}
