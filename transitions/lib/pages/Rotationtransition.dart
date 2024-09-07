import 'package:flutter/material.dart';

class RotationtransitionExample extends StatefulWidget {
  const RotationtransitionExample({super.key});

  @override
  State<RotationtransitionExample> createState() =>
      _RotationtransitionExampleState();
}

class _RotationtransitionExampleState extends State<RotationtransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 1000),
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            RotationTransition(
              turns: _controller,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isDismissed) {
            _controller.forward();
          } else {
            _controller.reverse();
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
