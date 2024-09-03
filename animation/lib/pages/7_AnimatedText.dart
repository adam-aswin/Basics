import 'package:flutter/material.dart';

class AnimatedDefaultExample extends StatefulWidget {
  const AnimatedDefaultExample({super.key});

  @override
  State<AnimatedDefaultExample> createState() => _AnimatedDefaultExampleState();
}

class _AnimatedDefaultExampleState extends State<AnimatedDefaultExample> {
  bool isText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedDefaultTextStyle(
        child: Text("Hello World"),
        style: TextStyle(
          color: isText ? Colors.red : Colors.green,
          fontSize: isText ? 50 : 18,
          fontWeight: isText ? FontWeight.bold : FontWeight.normal,
        ),
        duration: Duration(milliseconds: 1000),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isText = !isText;
          });
        },
        child: Icon(
          Icons.switch_access_shortcut,
        ),
      ),
    );
  }
}
