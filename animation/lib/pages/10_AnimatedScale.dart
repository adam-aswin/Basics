import 'package:flutter/material.dart';

class AnimatedScaleExample extends StatefulWidget {
  const AnimatedScaleExample({super.key});

  @override
  State<AnimatedScaleExample> createState() => _AnimatedScaleExampleState();
}

class _AnimatedScaleExampleState extends State<AnimatedScaleExample> {
  bool isScale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedScale(
        scale: isScale ? 1.5 : 1,
        duration: Duration(seconds: 1),
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isScale = !isScale;
          });
        },
        child: Icon(
          Icons.switch_access_shortcut,
        ),
      ),
    );
  }
}
