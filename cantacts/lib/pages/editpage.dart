import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Editpage extends StatefulWidget {
  const Editpage({super.key});

  @override
  State<Editpage> createState() => _EditpageState();
}

class _EditpageState extends State<Editpage> {
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  Uint8List? _image;
  File? img;
  final ImagePicker _picker = ImagePicker();
  List<dynamic>? cnt;
  int? index;
  String? base;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    editdata();
  }

  void editdata() async {
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString("contact");
    // final bytes = await _image!.readAsBytes();
    // final base64img = base64Encode(bytes);
    setState(() {
      cnt = jsonDecode(res!);
      fname.text = cnt![index!]["fname"];
      lname.text = cnt![index!]["lname"];
      phone.text = cnt![index!]["phone"];
      email.text = cnt![index!]["email"];
      _image = base64Decode(cnt![index!]["photo"]);
    });
    print(cnt);
    // Navigator.pushNamedAndRemoveUntil(context, "/contact", (route) => false);
  }

  void gallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        img = File(pickedFile.path);
      } else {
        print("null");
        // img = File(pickedFile!.path);
      }
    });
  }

  void camera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        img = File(pickedFile.path);
      } else {
        print("null");
        // img = File(pickedFile!.path);
      }
    });
  }

  void pickimage() async {
    if (img == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.grey[800],
              title: Text(
                "Choose a File",
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                TextButton(
                  onPressed: gallery,
                  child: Text(
                    "Gallery",
                    style: TextStyle(color: Colors.blueAccent[700]),
                  ),
                ),
                TextButton(
                  onPressed: camera,
                  child: Text(
                    "Camera",
                    style: TextStyle(color: Colors.blueAccent[700]),
                  ),
                ),
              ],
            );
          });
    } else {
      print("null");
    }
  }

  void saveData() async {
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString("contact");
    if (img != null) {
      final bytes = await img!.readAsBytes();
      final base64img = base64Encode(bytes);
      base = base64img;
    } else {
      base = base64Encode(_image!);
    }
    try {
      cnt = jsonDecode(res!);
      cnt![index!] = {
        "fname": fname.text,
        "lname": lname.text,
        "phone": phone.text,
        "email": email.text,
        "photo": base,
      };
      prefs.setString("contact", jsonEncode(cnt));
    } catch (error) {
      cnt = [
        {
          "fname": fname.text,
          "lname": lname.text,
          "phone": phone.text,
          "email": email.text,
          "photo": base,
        }
      ];
      prefs.setString("contact", jsonEncode(cnt));
    }
    print(cnt);
    Navigator.pushNamedAndRemoveUntil(context, "/contact", (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    index = int.parse(ModalRoute.of(context)!.settings.arguments as String);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          TextButton(
            onPressed: saveData,
            child: Text(
              "EDIT",
              style: TextStyle(
                color: Colors.blueAccent[700],
                fontSize: 15,
              ),
            ),
          )
        ],
        backgroundColor: Colors.black,
        title: Text(
          "EDIT CONTACT",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(30),
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
                  //
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[800],
                  ),
                  child: ClipOval(
                    child: img != null
                        ? Image.file(
                            img!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          )
                        : _image != null
                            ? Image.memory(
                                _image!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              )
                            : Container(
                                width: 100,
                                height: 100,
                                child: Text("No Photo"),
                              ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              // margin: EdgeInsets.only(left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 55,
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
                  // labelText: "First Name",
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
              height: 15,
            ),
            Container(
              // margin: EdgeInsets.only(left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 55,
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
                  // labelText: "Second Name",
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
              height: 15,
            ),
            Container(
              // margin: EdgeInsets.only(left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 55,
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
                  // labelText: "Phone Number",
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
              height: 15,
            ),
            Container(
              // margin: EdgeInsets.only(left: 50, right: 50),
              width: MediaQuery.of(context).size.width,
              height: 55,
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
                  // : Colors.black,
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 44, 120, 252),
                      width: 2,
                    ),
                  ),
                  // labelText: "Email",
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
              height: 15,
            ),
          ],
        ),
      ),
      // floatingActionButton: ElevatedButton(
      //   style: ElevatedButton.styleFrom(
      //     padding: EdgeInsets.all(20),
      //     backgroundColor: Colors.blueAccent[700],
      //     foregroundColor: Colors.black,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //   ),
      //   onPressed: saveData,
      //   child: Text("EDIT"),
      // ),
    );
  }
}
