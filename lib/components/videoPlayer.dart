import 'package:flutter/material.dart';
import 'package:spotify_ui/components/SingerDetail%20copy.dart';
import 'package:video_player/video_player.dart';

/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
  final String cover;
  final String covername;
  final String artistname;
  const VideoApp(
      {super.key,
      required this.artistname,
      required this.cover,
      required this.covername});

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late Future<void> _initializeVideoPlayerFuture;
  late VideoPlayerController _controller;
  bool _isMuted = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("videos/video1.mov")
      ..initialize().then((_) {
        _initializeVideoPlayerFuture = _controller.initialize();
        _controller.setLooping(false);
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : const CircularProgressIndicator(),
        ),

        // Dark shade container
        Container(
          height: 630,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Color.fromRGBO(27, 27, 27, 1)],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(60.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => SinglerDetailScreen(cover: widget.cover, covername: widget.artistname)));
                },
                child: Row(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        child: Image.asset(widget.cover)),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.artistname,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Playlist",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          child: FloatingActionButton(
                        backgroundColor: Color.fromRGBO(66, 200, 60, 1),
                        onPressed: () {
                          setState(() {
                            _controller.value.isPlaying
                                ? _controller.pause()
                                : _controller.play();
                          });
                        },
                        child: Icon(
                          _controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          size: 30,
                        ),
                      )),
        
                      IconButton(onPressed: (){
        
                      }, 
                      icon: Icon(Icons.more_vert_outlined, color: Colors.white,))
                    ],
                  ),
        
                  //SizedBox(width: 16.0),
                  // Add some spacing between buttons
                  FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _isMuted = !_isMuted;
                        _controller.setVolume(_isMuted ? 0.0 : 1.0);
                      });
                    },
                    child: Icon(
                      _isMuted ? Icons.volume_off : Icons.volume_up,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
