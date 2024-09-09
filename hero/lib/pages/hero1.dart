import 'package:flutter/material.dart';

class Hero1 extends StatefulWidget {
  const Hero1({super.key});

  @override
  State<Hero1> createState() => _Hero1State();
}

class _Hero1State extends State<Hero1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main"),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/hero2");
        },
        child: Center(
          child: Hero(
            tag: 'hero-image',
            child: Image.network(
              "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRN_YLneDIMiLFQizeNOh3Y9bQs4a5nzAoD24ROXw-6zVQ7UZ-l",
              height: 100,
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}
