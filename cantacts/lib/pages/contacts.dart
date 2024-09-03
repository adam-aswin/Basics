import 'dart:convert';
// import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List cnt = [];
  Uint8List? _image;
  // int index = 1;

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
      if (res != null) {
        cnt = jsonDecode(res);
      }
      // _image = base64Decode(cnt[index]["photo"]);
    });
    // print(cnt);
    // cnt.removeLast();
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
        // padding: EdgeInsets.all(30),
        child: ListView.builder(
          itemCount: cnt.length,
          itemBuilder: (context, index) {
            return ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/display",
                      arguments: index.toString());
                },
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: cnt[index]["photo"] != null
                      ? Image.memory(
                          _image = base64Decode(cnt[index]["photo"]),
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        )
                      : Image.asset(
                          "./lib/icons/user.png",
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                ),
                title: Row(
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
                subtitle: Text(
                  cnt[index]["phone"],
                  style: TextStyle(
                    color: const Color.fromARGB(221, 255, 255, 255),
                  ),
                ),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ));
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
