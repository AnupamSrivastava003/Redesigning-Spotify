import 'package:flutter/material.dart';
import 'package:spotify_ui/components/CurrentSongPlaying.dart';

class Songs extends StatelessWidget {
  final String artistname;
  final String songname;
  final String imagename;
  const Songs({super.key,required this.artistname, required this.imagename, required this.songname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CurrentSongPlayingScreen(songname: songname, imagename: imagename, artistname: artistname,)));
      },
      child: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                imagename, // Replace with your image URL
                width: 170.0, // Adjust width as needed
                height: 170.0, // Adjust height as needed
                fit: BoxFit.cover,
              ),),
          ),

          const SizedBox(
            height: 10,
          ),
          Container(
            width: 170,
            child: Text(
              songname,
              maxLines: 2,
              style: TextStyle(
                  color: Color.fromARGB(255, 197, 197, 197), fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
