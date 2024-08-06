import 'package:flutter/material.dart';

class StackWork extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 100,
            width: 200,
            // color: Colors.green,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Positioned(
                    right: -5,
                    top: -5,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(100)),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
