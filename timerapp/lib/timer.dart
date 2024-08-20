import 'dart:async';

import 'package:flutter/material.dart';

class timerproject extends StatefulWidget {
  const timerproject({super.key});

  @override
  State<timerproject> createState() => _timerprojectState();
}

class _timerprojectState extends State<timerproject> {
  Timer? _timer;
  int _elapstime = 0;
  bool _isRunning = false;
  List<String> laps = [];

  void _startStoptimer() {
    if (_isRunning) {
      _timer?.cancel();
    } else {
      _timer = Timer.periodic(Duration(microseconds: 10), (timer) {
        setState(() {
          _elapstime += 100;
        });
        print(_elapstime);
      });
    }

    setState(() {
      _isRunning = !_isRunning;
    });
  }

  String _formatTimer(int milliSecond) {
    int hundreds = (milliSecond / 100).truncate();
    int seconds = (hundreds / 100).truncate();
    int minutes = (seconds / 60).truncate();

    String minuteStr = ((minutes % 60).toString().padLeft(2, "0"));
    String secondStr = ((seconds % 60).toString().padLeft(2, "0"));
    String hundredStr = ((hundreds % 100).toString().padLeft(2, "0"));
    return "$minuteStr : $secondStr : $hundredStr";
  }

  void _resetLap() {
    if (!_isRunning) {
      setState(() {
        _elapstime = 0;
        laps.clear();
      });
    } else {
      setState(() {
        laps.add(_formatTimer(_elapstime));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            "Stop-Watch",
            style: TextStyle(
              color: Color.fromARGB(230, 255, 255, 255),
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.grey[900],
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(10, 158, 158, 158),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(-2, -2),
                      ),
                      BoxShadow(
                        color: const Color.fromARGB(43, 0, 0, 0),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                      )
                    ]),
                child: Center(
                  child: Text(
                    _formatTimer(_elapstime),
                    style: TextStyle(
                        color: const Color.fromARGB(230, 255, 255, 255),
                        fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: _resetLap,
                    child: Container(
                      width: 70,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(10, 158, 158, 158),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(-2, -2),
                          ),
                          BoxShadow(
                            color: const Color.fromARGB(43, 0, 0, 0),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(2, 2),
                          )
                        ],
                        color: Colors.grey[900],
                      ),
                      child: Center(
                        child: _isRunning
                            ? Text(
                                "Lap",
                                style: TextStyle(color: Colors.deepPurple),
                              )
                            : Text(
                                "Reset",
                                style: TextStyle(color: Colors.blue),
                              ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _startStoptimer,
                    child: Container(
                      width: 70,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[900],
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(10, 158, 158, 158),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(-2, -2),
                          ),
                          BoxShadow(
                            color: const Color.fromARGB(43, 0, 0, 0),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(2, 2),
                          )
                        ],
                      ),
                      child: Center(
                        child: _isRunning
                            ? Text(
                                "Stop",
                                style: TextStyle(color: Colors.red),
                              )
                            : Text(
                                "Start",
                                style: TextStyle(color: Colors.green),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.grey[800],
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: laps.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          (index + 1).toString(),
                          style: TextStyle(
                            color: const Color.fromARGB(230, 255, 255, 255),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          laps[index],
                          style: TextStyle(
                            color: const Color.fromARGB(230, 255, 255, 255),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
