import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:expensetracker/pages/Homepage.dart';
import 'package:expensetracker/pages/expensepage.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int index = 0;
  List<Widget> screens = [Homepage(), Expensepage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 44, 44),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
            Color(value);
          });
        },

        // buttonBackgroundColor: const Color.fromARGB(255, 0, 148, 62),
        items: [
          Icon(
            Icons.home,
            color: index == 0
                ? const Color.fromARGB(255, 0, 148, 62)
                : Colors.black,
          ),
          Icon(
            Icons.bar_chart_rounded,
            color: index == 1
                ? const Color.fromARGB(255, 0, 148, 62)
                : Colors.black,
          ),
        ],
        backgroundColor: Colors.transparent,
        color: const Color.fromARGB(255, 27, 27, 27),
      ),
      body: screens[index],
    );
  }
}
