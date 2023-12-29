import 'package:flutter/material.dart';
import 'package:spotify_ui/components/SingerProfile.dart';

class ArtistsCover extends StatelessWidget {
  final String cover;
  final String covername;
  const ArtistsCover({super.key,required this.cover, required this.covername});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SingerProfile(cover: cover, covername: covername,)));
      },
      child: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.asset(
                cover, // Replace with your image URL
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
              covername,
              maxLines: 2,
              style: TextStyle(
                  color: Color.fromARGB(255, 197, 197, 197), fontSize: 12, fontWeight: FontWeight.w600),
            ),
            alignment: Alignment.bottomCenter,
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
