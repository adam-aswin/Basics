import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class Displaycontacts extends StatefulWidget {
  const Displaycontacts({super.key});

  @override
  State<Displaycontacts> createState() => _DisplaycontactsState();
}

class _DisplaycontactsState extends State<Displaycontacts> {
  Uint8List? _image;
  List<dynamic>? contact;
  int? index;

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
      contact = jsonDecode(res!);
      if (contact![index!]["photo"] != null) {
        _image = base64Decode(contact![index!]["photo"]);
      }
    });
    print(contact![index!]["fname"]);
  }

  void delete() async {
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString("contact");
    contact = jsonDecode(res!);
    contact!.removeAt(index!);
    prefs.setString("contact", jsonEncode(contact));
    Navigator.pushNamedAndRemoveUntil(context, "/contact", (route) => false);
    // show();
  }

  void edit() {
    Navigator.pushNamed(context, "/edit", arguments: index.toString());
  }

  @override
  Widget build(BuildContext context) {
    index = int.parse(ModalRoute.of(context)!.settings.arguments as String);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "CONTACT DETAILS",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
              child: _image != null
                  ? Image.memory(
                      _image = base64Decode(contact![index!]["photo"]),
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      "./lib/icons/user.png",
                      width: 140,
                      height: 140,
                      fit: BoxFit.cover,
                    ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  child: contact != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              contact![index!]["fname"],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              contact![index!]["lname"],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        )
                      : Text("NULL"),
                ),
                Container(
                  child: contact != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              contact![index!]["state"],
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              ", ",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              contact![index!]["country"],
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      : Text("NULL"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[900],
                  ),
                  child: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[900],
                  ),
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[900],
                  ),
                  child: Icon(
                    Icons.video_call_rounded,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[900],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Contact Info",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: edit,
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: delete,
                        child: Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          contact != null
                              ? Text(
                                  contact![index!]["phone"],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                )
                              : Text("NULL"),
                          Text(
                            "Mobile",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.video_call_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[900],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Connected apps",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      contact != null
                          ? Text(
                              contact![index!]["email"],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            )
                          : Text("NULL"),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 22,
                        width: 22,
                        child: Image.asset(
                          "./lib/icons/whatsapp.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      contact != null
                          ? Text(
                              contact![index!]["phone"],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            )
                          : Text("NULL"),
                    ],
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
