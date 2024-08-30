import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List cnt = [];
  // File? _image;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    show();
  }

  void show() async {
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString("contact");
    setState(() {
      cnt = jsonDecode(res!);
    });
    print(cnt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "CONTACTS",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: ListView.builder(
          itemCount: cnt.length,
          itemBuilder: (context, index) {
            return Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Text(
                    cnt[index]["fname"],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    cnt[index]["lname"],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent[700],
        onPressed: () {
          Navigator.pushNamed(context, "/add");
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
