import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Colour;
  final textColour;
  final buttonText;
  final buttonTapped;
  Buttons({
    super.key,
    required this.Colour,
    required this.textColour,
    required this.buttonText,
    required this.buttonTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: Colour),
          child: Center(
            child: Text(
              buttonText.toString(),
              style: TextStyle(
                color: textColour,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
