import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .5,
          color: Colors.blueGrey,
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Container(
                color: Colors.green,
                margin: EdgeInsets.only(bottom: 10, right: 10),
                child: Image.asset(
                  "./images/tjr.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.green,
                margin: EdgeInsets.only(bottom: 10, right: 10),
                child: Image.asset(
                  "./images/z.webp",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.green,
                margin: EdgeInsets.only(bottom: 10, right: 10),
                child: Image.asset(
                  "./images/y.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.green,
                margin: EdgeInsets.only(bottom: 10, right: 10),
                child: Image.asset(
                  "./images/in.webp",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.green,
                margin: EdgeInsets.only(bottom: 10, right: 10),
                child: Image.asset(
                  "./images/rk.webp",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.green,
                margin: EdgeInsets.only(bottom: 10, right: 10),
                child: Image.asset(
                  "./images/tj.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
