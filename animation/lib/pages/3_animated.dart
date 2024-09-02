import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  bool _isPadding = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedPadding(
        padding: _isPadding ? EdgeInsets.all(50):EdgeInsets.all(10),
        duration: Duration(milliseconds: 2000),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.grey,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isPadding = !_isPadding;
          });
        },
        child: Icon(
          Icons.switch_access_shortcut,
        ),
      ),
    );
  }
}
