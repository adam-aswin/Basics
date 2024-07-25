import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: 500,
          child: Image.asset('./images/2.webp'),
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(5, 5))
              ],
              gradient: LinearGradient(
                  colors: [Colors.pink, Colors.orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        ),
      ),
    );
  }
}
