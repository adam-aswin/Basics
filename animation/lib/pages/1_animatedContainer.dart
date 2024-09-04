import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double width = double.infinity;
  double height = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 3000),
        width: width,
        height: height,
        color: Colors.grey[800],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            height = 600;
          });
        },
        child: Icon(
          Icons.switch_access_shortcut,
        ),
      ),
    );
  }
}
