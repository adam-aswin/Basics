import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final List<String> buttons = [
    "C",
    "DEL",
    "%",
    "/",
    "7",
    "8",
    "9",
    "x",
    "4",
    "5",
    "6",
    "-",
    "4",
    "5",
    "6",
    "+",
    "0",
    ".",
    "ANS",
    "=",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.only(left: 50, right: 50, bottom: 20),
          child: Column(
            children: [
              // ============================================================
              Expanded(
                // flex: 1,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Text(
                          "UserQuestion",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "UserAnswer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // ============================================================
              // ============================================================
              Expanded(
                flex: 2,
                child: GridView.builder(
                    itemCount: buttons.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, index) {
                      return Buttons(
                        Colour: isOperator(buttons[index])!
                            ? Colors.yellow.shade700
                            : Colors.grey[900],
                        textColour: Colors.white,
                        buttonText: buttons[index],
                        buttonTapped: () {},
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool? isOperator(String? x) {
    if (x == "C" ||
        x == "DEL" ||
        x == "%" ||
        x == "/" ||
        x == "x" ||
        x == "-" ||
        x == "+" ||
        x == "=") {
      return true;
    }
    return false;
  }
}
