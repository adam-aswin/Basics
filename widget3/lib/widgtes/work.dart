import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .5,
          color: Colors.blueGrey,
          child: ListView(
            // scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(10),
            children: [
              Container(
                width: 300,
                height: 200,
                color: Colors.green,
                margin: EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  "./images/tjr.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.green,
                margin: EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  "./images/z.webp",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.green,
                margin: EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  "./images/y.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.green,
                margin: EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  "./images/in.webp",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.green,
                // margin: EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  "./images/rk.webp",
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
