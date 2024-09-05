import 'package:bloodbank/pages/Addpage.dart';
import 'package:bloodbank/pages/homescreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int page = 0;
  final List<Widget> screens = [Homescreen(), Addpage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 230, 230),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (value) {
          setState(() {
            page = value;
          });
        },
        letIndexChange: (value) => true,
        backgroundColor: Colors.transparent,
        color: const Color.fromARGB(255, 168, 12, 0),
        // animationCurve: Curves.easeInBack,
        items: [
          Icon(
            Icons.home_outlined,
            color: const Color.fromARGB(255, 248, 206, 206),
          ),
          Icon(
            Icons.person,
            color: const Color.fromARGB(255, 248, 206, 206),
          ),
        ],
      ),
      body: screens[page],
    );
  }
}
