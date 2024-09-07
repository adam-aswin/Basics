import 'package:flutter/material.dart';

class SizedtransitionExample extends StatefulWidget {
  const SizedtransitionExample({super.key});

  @override
  State<SizedtransitionExample> createState() => _SizedtransitionExampleState();
}

class _SizedtransitionExampleState extends State<SizedtransitionExample>
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
            SizeTransition(
              sizeFactor: _controller,
              axis: Axis.vertical,
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
