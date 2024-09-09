import 'package:flutter/material.dart';
import 'package:splash/pages/splash2.dart';

class Spalsh1 extends StatefulWidget {
  const Spalsh1({super.key});

  @override
  State<Spalsh1> createState() => _Spalsh1State();
}

class _Spalsh1State extends State<Spalsh1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hideScreen();
  }

  Future<void> hideScreen() async {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Splash2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.flash_on,
              color: Colors.white,
              size: 150,
            ),
            Text(
              "Welcome to Flash",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
