import 'package:flutter/material.dart';

class Hero2 extends StatefulWidget {
  const Hero2({super.key});

  @override
  State<Hero2> createState() => _Hero2State();
}

class _Hero2State extends State<Hero2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second"),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 'hero-image',
              child: Image.network(
                "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRN_YLneDIMiLFQizeNOh3Y9bQs4a5nzAoD24ROXw-6zVQ7UZ-l",
                height: 300,
                width: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
