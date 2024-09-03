import 'package:flutter/material.dart';

class WorkOpacity extends StatefulWidget {
  const WorkOpacity({super.key});

  @override
  State<WorkOpacity> createState() => _WorkOpacityState();
}

class _WorkOpacityState extends State<WorkOpacity> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  bool isOpcity = false;
  double? sum;

  void add() {
    setState(() {
      double a = double.parse(c1.text);
      double b = double.parse(c2.text);
      sum = a + b;
      c1.clear();
      c2.clear();
    });
    print(sum);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .6,
                      height: 50,
                      child: TextField(
                        controller: c1,
                        decoration: InputDecoration(
                          labelText: "Enter first number",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .6,
                      height: 50,
                      child: TextField(
                        controller: c2,
                        decoration: InputDecoration(
                          labelText: "Enter second number",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                      onPressed: () {
                        add();
                        setState(() {
                          isOpcity = !isOpcity;
                        });
                      },
                      child: Text("ADD")),
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            AnimatedOpacity(
              opacity: isOpcity ? 1 : 0,
              duration: Duration(milliseconds: 1000),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(sum.toString()),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isOpcity = !isOpcity;
          });
        },
        child: Icon(
          Icons.switch_access_shortcut,
        ),
      ),
    );
  }
}
