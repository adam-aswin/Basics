import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Displaypage extends StatefulWidget {
  const Displaypage({super.key});

  @override
  State<Displaypage> createState() => _DisplaypageState();
}

class _DisplaypageState extends State<Displaypage> {
  String? _selectedblood;
  Uint8List? _image;

  final List<String> bloodgroup = [
    "A-",
    "A+",
    "AB-",
    "AB+",
    "O+",
    "O-",
    "B+",
    "B-",
  ];
  List<dynamic> cnt = [];
  List<dynamic> bloods = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    display();
    blood();
  }

  void display() async {
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString("blood");
    setState(() {
      if (res != null) {
        cnt = jsonDecode(res);
      } else {
        print("eroor");
      }
    });
  }

  void blood() {
    print(bloods);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Doners",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 168, 12, 0),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text("Donors"),
                Container(
                  height: 35,
                  width: 250,
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 204, 18, 4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _selectedblood == null
                            ? "Select a Blood Group"
                            : "$_selectedblood",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      DropdownButton(
                        onTap: () {
                          setState(() {
                            blood();
                          });
                        },
                        icon: Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          color: Colors.white,
                        ),
                        dropdownColor: Colors.white,
                        underline: Container(
                          height: 0,
                        ),
                        items: bloodgroup.map(
                          (String blood) {
                            return DropdownMenuItem(
                              value: blood,
                              child: Text(blood),
                            );
                          },
                        ).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedblood = value;
                            for (int index = 0; index < cnt.length; index++) {
                              // print(index);
                              // bloods.add(cnt[index]["blood"]);
                              if (cnt[index]["blood"] == _selectedblood) {
                                print(cnt[index]["blood"]);
                              } else {
                                print("hai");
                              }
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Expanded(
                child: ListView.builder(
                  itemCount: cnt.length,
                  itemBuilder: (context, index) {
                    return cnt[index]["blood"] == _selectedblood
                        ? Container(
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.only(bottom: 10),
                            width: MediaQuery.of(context).size.width,
                            height: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              color: const Color.fromARGB(255, 255, 231, 231),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: const Color.fromARGB(
                                              255, 121, 120, 120),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: cnt[index]["photo"] != null
                                              ? Image.memory(
                                                  _image = base64Decode(
                                                      cnt[index]["photo"]),
                                                  fit: BoxFit.cover,
                                                )
                                              : Image.asset(
                                                  "./lib/icons/user.png",
                                                  fit: BoxFit.contain,
                                                ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              cnt[index]["name"],
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(cnt[index]["location"]),
                                            Text(cnt[index]["phone"]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        cnt[index]["blood"],
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 196, 14, 2),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: const Color.fromARGB(
                                                    255, 250, 189, 189)),
                                            child: Icon(
                                              Icons.message,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: const Color.fromARGB(
                                                    255, 250, 189, 189)),
                                            child: Icon(
                                              Icons.call,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        : Text("");
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
