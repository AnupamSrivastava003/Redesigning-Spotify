import 'package:flutter/material.dart';

class tabbarComponent extends StatelessWidget {
  final int index;
  final Function(int?) onTap;
  const tabbarComponent({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      selectedItemColor: const Color.fromRGBO(66, 200, 60, 1),
      unselectedItemColor: const Color.fromARGB(255, 212, 212, 212),
      backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home_max, size: 25,), label: "Home"),
        const BottomNavigationBarItem(icon: Icon(Icons.search, size: 25), label: "Notifications"),
        const BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded, size: 25), label: "Favorite"),
        const BottomNavigationBarItem(icon: Icon(Icons.person_2_rounded, size: 25), label: "Info"),
      ],
    );
    }
}