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

    String minuteStr = (minutes.toString().padLeft(2, "0"));
    String secondStr = (seconds.toString().padLeft(2, "0"));
    String hundredStr = (hundreds.toString().padLeft(2, "0"));
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
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Stop-Watch"),
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
              GestureDetector(
                child: Text(
                  _formatTimer(_elapstime),
                  style: TextStyle(color: Colors.white, fontSize: 30),
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
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: _isRunning ? Colors.yellow : Colors.blue,
                      ),
                      child: Center(
                        child: _isRunning ? Text("Lap") : Text("Reset"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _startStoptimer,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: _isRunning ? Colors.red : Colors.green,
                      ),
                      child: Center(
                        child: _isRunning ? Text("Stop") : Text("Start"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              Expanded(
                  child: ListView.builder(
                itemCount: laps.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: Text(
                      laps[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
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
