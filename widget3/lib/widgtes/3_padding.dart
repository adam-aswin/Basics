import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Text(
            "data",
            style: TextStyle(backgroundColor: Colors.yellow),
          ),
        ),
      ),
    );
  }
}
