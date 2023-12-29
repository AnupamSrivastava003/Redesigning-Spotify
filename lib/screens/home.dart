import 'package:flutter/material.dart';
import 'package:spotify_ui/elements/glassbox.dart';
import 'package:spotify_ui/components/Bottomtabbar.dart';
import 'package:spotify_ui/screens/support.dart';
import 'package:spotify_ui/screens/tabbarscreens/BNBS1.dart';
import 'package:spotify_ui/screens/tabbarscreens/BNBS2.dart';
import 'package:spotify_ui/screens/tabbarscreens/BNBS3.dart';
import 'package:spotify_ui/screens/tabbarscreens/BNBS4.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;
  final PageController _pageController = PageController();

  void handleNavChange(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromRGBO(28, 27, 27, 1),
      extendBody: true,

      bottomNavigationBar: GlassBox(
        child: tabbarComponent(
          index: currentIndex,
          onTap: (index) {
            _pageController.animateToPage(
              index!,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
      body: PageView(
        physics: RangeMaintainingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: const [
          StartingScreen(),
          SearchScreen(),
          favoriteScreen(),
          personalInfoScreen()
        ],
      ),
    );
  }
}
