import 'package:flutter/material.dart';

class LyricsScreen extends StatefulWidget {

  final String songname;
  final String artistname;
  final String imagename;
  LyricsScreen({super.key, required this.artistname, required this.imagename, required this.songname});

  @override
  State<LyricsScreen> createState() => _LyricsScreenState();
}

class _LyricsScreenState extends State<LyricsScreen>
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
        body: Stack(alignment: Alignment.bottomCenter, children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          widget.imagename,
          fit: BoxFit.cover,
        ),
      ),

      Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black.withOpacity(0.7),
      ),

      //
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 020, right: 020, top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    )),
                Text(
                  widget.songname,
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),

          //lyrics
          //list tiles
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: SizedBox(
              height: 600,
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: double.infinity,
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          "(Verse 1)\n Sleepin', you're on your tippy toes Creepin' around like no one knows Think you're so criminal Bruises on both my knees for you Don't say thank you or please I do what I want when I'm wanting to My soul? So cynical \n (Verse 2) \nSleepin', you're on your tippy toes Creepin' around like no one knows Think you're so criminal Bruises on both my knees for you Don't say thank you or please I do what I want when I'm wanting to My soul? So cynical \nSleepin', you're on your tippy toes Creepin' around like no one knows Think you're so criminal Bruises on both my knees for you Don't say thank you or please I do what I want when I'm wanting to My soul? So cynical \n (Verse 2) \nSleepin', you're on your tippy toes Creepin' around like no one knows Think you're so criminal Bruises on both my knees for you Don't say thank you or please I do what I want when I'm wanting to My soul? So cynical",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            height: 2,
                            wordSpacing: 6,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),

      Container(
        width: double.infinity,
        height: 250,
        color: const Color.fromRGBO(28, 27, 27, 1),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            widget.imagename,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.songname,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(widget.artistname,
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300))
                        ],
                      ),
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
                        size: 24,
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
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
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

            //play pause

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.replay,
                    color: Colors.white,
                    size: 24,
                  ),
                  const Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: 24,
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
                        size: 30,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.skip_next,
                    color: Colors.white,
                    size: 24,
                  ),
                  const Icon(
                    Icons.shuffle,
                    color: Colors.white,
                    size: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    ]
    )
    );
  }
}
