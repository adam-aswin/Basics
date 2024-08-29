import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Addcontacts extends StatefulWidget {
  const Addcontacts({super.key});

  @override
  State<Addcontacts> createState() => _AddcontactsState();
}

class _AddcontactsState extends State<Addcontacts> {
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  File? _image;
  final ImagePicker _picker = ImagePicker();

  void gallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print("null");
      }
    });
  }

  void camera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print("null");
      }
    });
  }

  void pickimage() async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Choose a File"),
            actions: [
              TextButton(
                onPressed: gallery,
                child: Text("Gallery"),
              ),
              TextButton(
                onPressed: camera,
                child: Text("Camera"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text(
          "ADD CONTACT",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
              onTap: pickimage,
              child: Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[800],
                  ),
                  child: Image.asset(
                    "./lib/icons/user.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // margin: EdgeInsets.only(left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 48,
              // padding: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800],
              ),
              child: TextField(
                controller: fname,
                keyboardType: TextInputType.name,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 44, 120, 252),
                      width: 2,
                    ),
                  ),
                  labelText: "First Name",
                  hintText: "First Name",
                  labelStyle: TextStyle(
                    color: Colors.white60,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white60,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // margin: EdgeInsets.only(left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 48,
              // padding: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800],
              ),
              child: TextField(
                controller: lname,
                keyboardType: TextInputType.name,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 44, 120, 252),
                      width: 2,
                    ),
                  ),
                  labelText: "Second Name",
                  hintText: "Second Name",
                  labelStyle: TextStyle(
                    color: Colors.white60,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white60,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // margin: EdgeInsets.only(left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 48,
              // padding: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800],
              ),
              child: TextField(
                controller: phone,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 44, 120, 252),
                      width: 2,
                    ),
                  ),
                  labelText: "Phone Number",
                  hintText: "Phone Number",
                  labelStyle: TextStyle(
                    color: Colors.white60,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white60,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // margin: EdgeInsets.only(left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 48,
              // padding: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800],
              ),
              child: TextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 44, 120, 252),
                      width: 2,
                    ),
                  ),
                  labelText: "Email",
                  hintText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.white60,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.white60,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 80,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      backgroundColor: Colors.blueAccent[700],
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("ADD"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
