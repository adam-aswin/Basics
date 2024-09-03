import 'package:flutter/material.dart';

class AnimatedFadeExample extends StatefulWidget {
  const AnimatedFadeExample({super.key});

  @override
  State<AnimatedFadeExample> createState() => _AnimatedFadeExampleState();
}

class _AnimatedFadeExampleState extends State<AnimatedFadeExample> {
  bool isshow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedCrossFade(
        firstChild: IconButton(
            onPressed: () {
              setState(() {
                isshow = true;
              });
            },
            icon: Icon(Icons.play_arrow)),
        secondChild: IconButton(
          onPressed: () {
            setState(() {
              isshow = false;
            });
          },
          icon: Icon(Icons.pause),
        ),
        crossFadeState:
            isshow ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: Duration(milliseconds: 500),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isshow = !isshow;
          });
        },
        child: Icon(
          Icons.switch_access_shortcut,
        ),
      ),
    );
  }
}
