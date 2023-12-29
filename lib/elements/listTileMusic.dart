import 'package:flutter/material.dart';
import 'package:spotify_ui/components/CurrentSongPlaying.dart';

class MusicListTile extends StatefulWidget {
  final String artistname;
  final String songname;
  final String imagename;
  const MusicListTile({super.key, required this.artistname, required this.songname, required this.imagename,});

  @override
  State<MusicListTile> createState() => _MusicListTileState();
}

class _MusicListTileState extends State<MusicListTile> {


  bool favoritetoggle = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          contentPadding: const EdgeInsets.all(10),
          minVerticalPadding: 10,
          leading: IconButton(
              padding: const EdgeInsets.only(bottom: 10),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CurrentSongPlayingScreen(songname: widget.songname, artistname: widget.artistname, imagename: widget.imagename,)));
              },
              icon: const Icon(
                Icons.play_circle_fill_outlined,
                color: Colors.white,
                size: 50,
              )),
          horizontalTitleGap: 30,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              widget.songname,
              style: const TextStyle(
                  color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Text(
            widget.artistname,
            style: const TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w400),
          ),
          trailing: IconButton(
              onPressed: () {
                setState(() {
                  favoritetoggle = !favoritetoggle;
                });
              },
              icon: Icon(
                favoritetoggle ? Icons.favorite : Icons.favorite_outline,
                color: Color.fromRGBO(66, 200, 60, 1),
              )),
        ));
      
  }
}
