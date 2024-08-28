import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Outputpage extends StatefulWidget {
  const Outputpage({super.key});

  @override
  State<Outputpage> createState() => _OutputpageState();
}

class _OutputpageState extends State<Outputpage> {
  Map data = {};
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

  void take() {}
  @override
  Widget build(BuildContext context) {
    final int msg =
        jsonDecode(ModalRoute.of(context)?.settings.arguments as String);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 251, 252),
      appBar: AppBar(
        title: Text("DETAILS"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 241, 251, 252),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .3,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 1, 198, 224),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(details[msg].toString())
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Name:"),
                SizedBox(
                  width: 10,
                ),
                Text(details[msg]["name"]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Age:"),
                SizedBox(
                  width: 10,
                ),
                Text(details[msg]["age"]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("D.O.B:"),
                SizedBox(
                  width: 10,
                ),
                Text(details[msg]["date"]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Email:"),
                SizedBox(
                  width: 10,
                ),
                Text(details[msg]["email"]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Roll Number:"),
                SizedBox(
                  width: 10,
                ),
                Text(details[msg]["no"]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Gender:"),
                SizedBox(
                  width: 10,
                ),
                Text(details[msg]["gender"]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Address:"),
                SizedBox(
                  width: 10,
                ),
                Text(details[msg]["add"]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Course:"),
                SizedBox(
                  width: 10,
                ),
                Text(details[msg]["course"]),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, "/edit",arguments: jsonEncode(msg));
        },
        icon: Icon(Icons.edit),
      ),
    );
  }
}
