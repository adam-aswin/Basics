import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Editpage extends StatefulWidget {
  const Editpage({super.key});

  @override
  State<Editpage> createState() => _EditpageState();
}

class _EditpageState extends State<Editpage> {
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
  List<dynamic> details = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  void get() async {
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString("Stud");
    setState(() {
      details = jsonDecode(res!);
    });
  }

  @override
  Widget build(BuildContext context) {
    final int msg =
        jsonDecode(ModalRoute.of(context)?.settings.arguments as String);

    void edit() {
      details[msg]["name"] = _c1.text;
      get();
    }

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                      // add();
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        "/home",
                        (route) => false,
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
