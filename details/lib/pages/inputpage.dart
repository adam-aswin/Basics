import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  TextEditingController _c1 = TextEditingController();
  TextEditingController _c2 = TextEditingController();
  TextEditingController _c3 = TextEditingController();
  TextEditingController _c4 = TextEditingController();
  TextEditingController _c5 = TextEditingController();
  TextEditingController _c6 = TextEditingController();
  TextEditingController _c7 = TextEditingController();
  TextEditingController _c8 = TextEditingController();
  TextEditingController _c9 = TextEditingController();
  TextEditingController _c10 = TextEditingController();
  TextEditingController _c11 = TextEditingController();
  Map data = {};
  List<dynamic> details = [];

  // void get() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final res = prefs.getString("Stud");
  //   tasks = jsonDecode(res!);
  //   setState(() {
  //     data["name"] = _c1.text;
  //     data["age"] = _c2.text;
  //     data["date"] = _c3.text;
  //     data["email"] = _c4.text;
  //     data["no"] = _c5.text;
  //     data["gender"] = _c6.text;
  //     data["add"] = _c7.text;
  //     data["course"] = _c8.text;
  //     tasks.add(data);

  //     print(tasks);
  //   });
  //   prefs.setString("Stud", jsonEncode(tasks));
  // }

  void add() async {
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString("Stud");
    try {
      details = jsonDecode(res!);
      data["name"] = _c1.text;
      data["age"] = _c2.text;
      data["date"] = _c3.text;
      data["email"] = _c4.text;
      data["no"] = _c5.text;
      data["gender"] = _c6.text;
      data["add"] = _c6.text;
      data["course"] = _c8.text;
      details.add(data);
      prefs.setString("Stud", jsonEncode(details));
    } catch (error) {
      data = {
        "name": _c1.text,
        "age": _c2.text,
        "date": _c3.text,
        "email": _c4.text,
        "no": _c5.text,
        "gender": _c6.text,
        "add": _c7.text,
        "course": _c8.text
      };
      details.add(data);
      prefs.setString("Stud", jsonEncode(details));
    }
    // print(details);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 251, 252),
        title: Text(
          "STUDENT DETAILS",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 241, 251, 252),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * .6,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: _c1,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Full Name",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: _c2,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Age",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: _c3,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Date Of Birth",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: _c4,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Email Id",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: _c5,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Roll Number",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: _c6,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Gender",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: _c7,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Address",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: _c8,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Course",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _c9,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 92, 231, 250),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color:
                                        const Color.fromARGB(255, 1, 198, 224),
                                  )),
                              enabled: true,
                              labelText: "Mark",
                              labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 1, 198, 224),
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            controller: _c10,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 92, 231, 250),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color:
                                        const Color.fromARGB(255, 1, 198, 224),
                                  )),
                              enabled: true,
                              labelText: "Mark",
                              labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 1, 198, 224),
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            controller: _c11,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      const Color.fromARGB(255, 92, 231, 250),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color:
                                        const Color.fromARGB(255, 1, 198, 224),
                                  )),
                              enabled: true,
                              labelText: "Mark",
                              labelStyle: TextStyle(
                                color: const Color.fromARGB(255, 1, 198, 224),
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset("./images/book.jpg"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 1, 198, 224),
                      shadowColor: const Color.fromARGB(255, 92, 231, 250),
                    ),
                    onPressed: () {
                      add();
                      Navigator.pushNamed(
                        context,
                        "/home",
                      );
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 241, 251, 252),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
