import 'dart:convert';

import 'package:flutter/material.dart';

class Outputpage extends StatefulWidget {
  const Outputpage({super.key});

  @override
  State<Outputpage> createState() => _OutputpageState();
}

class _OutputpageState extends State<Outputpage> {
  @override
  Widget build(BuildContext context) {
    final Map msg =
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
        height: MediaQuery.of(context).size.height * .5,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 1, 198, 224),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Name:"),
                SizedBox(
                  width: 10,
                ),
                Text(msg["name"]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Age:"),
                SizedBox(
                  width: 10,
                ),
                Text(msg["age"]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("D.O.B:"),
                SizedBox(
                  width: 10,
                ),
                Text(msg["date"]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Email:"),
                SizedBox(
                  width: 10,
                ),
                Text(msg["email"]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Roll Number:"),
                SizedBox(
                  width: 10,
                ),
                Text(msg["no"]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Gender:"),
                SizedBox(
                  width: 10,
                ),
                Text(msg["gender"]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
