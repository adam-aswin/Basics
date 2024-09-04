import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool _isAligin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedAlign(
        alignment: _isAligin ? Alignment.center : Alignment.topLeft,
        duration: Duration(milliseconds: 3000),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.grey,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isAligin = !_isAligin;
          });
        },
        child: Icon(
          Icons.switch_access_shortcut,
        ),
      ),
    );
  }
}
