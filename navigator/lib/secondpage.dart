import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Second page"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/third");
            },
            child: Text("Third page"),
          )
        ],
      ),
    );
  }
}
