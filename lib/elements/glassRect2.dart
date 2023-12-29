import 'dart:ui';

import 'package:flutter/material.dart';

class GlassmorphicRectangle2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          height: 750,
          width: double.infinity,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(30),
            color: Colors.white.withOpacity(0.03),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(),
          ),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 750,
          width: double.infinity,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white.withOpacity(0.05)
            ),

            borderRadius: BorderRadius.circular(30),
            color: Colors.white.withOpacity(0.03),
          ),
        ),
      ),
    ]);
  }
}
