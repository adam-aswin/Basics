import 'package:flutter/material.dart';

class AnimatedRotationExample extends StatefulWidget {
  const AnimatedRotationExample({super.key});

  @override
  State<AnimatedRotationExample> createState() =>
      _AnimatedRotationExampleState();
}

class _AnimatedRotationExampleState extends State<AnimatedRotationExample> {
  bool isRotate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedRotation(
        turns: isRotate ? 1 : 0,
        duration: Duration(seconds: 1),
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Text("Hello World"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isRotate = !isRotate;
          });
        },
        child: Icon(
          Icons.switch_access_shortcut,
        ),
      ),
    );
  }
}
