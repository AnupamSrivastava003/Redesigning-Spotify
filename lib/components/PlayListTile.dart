import 'package:flutter/material.dart';

class PlayListTile extends StatefulWidget {
  final String playlistname;
  final String playlistcover;
  const PlayListTile({super.key, required this.playlistname, required this.playlistcover,});

  @override
  State<PlayListTile> createState() => _MusicListTileState();
}

class _MusicListTileState extends State<PlayListTile> {


  bool favoritetoggle = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: SizedBox(
          width: double.infinity,
          child: ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            contentPadding: const EdgeInsets.all(10),
            minVerticalPadding: 10,
            leading: Image.asset(widget.playlistcover),
            horizontalTitleGap: 30,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                widget.playlistname,
                style: const TextStyle(
                    color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          )),
    );
      
  }
}
