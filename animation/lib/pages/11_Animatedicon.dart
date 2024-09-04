import 'package:flutter/material.dart';

class AnimatedIconExample extends StatefulWidget {
  const AnimatedIconExample({super.key});

  @override
  State<AnimatedIconExample> createState() => _AnimatedIconExampleState();
}

class _AnimatedIconExampleState extends State<AnimatedIconExample>
    with SingleTickerProviderStateMixin {
  bool isIcon = false;
  AnimationController? _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedIcon(
            icon: isIcon ? AnimatedIcons.pause_play : AnimatedIcons.play_pause,
            progress: _controller!),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isIcon = !isIcon;
            _controller!.forward(from: 0);
          });
        },
        child: Icon(
          Icons.switch_access_shortcut,
        ),
      ),
    );
  }
}
