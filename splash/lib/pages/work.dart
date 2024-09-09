import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splash/pages/home.dart';
import 'package:splash/pages/login.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  Map mp = {};
  Map log = {};
  bool _islogin = false;
  bool login=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    save();
    hideScreen();
  }

  void save() async {
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString("login");
    try {
      mp = jsonDecode(res!);
      mp["islog"] = _islogin;
      prefs.setString("login", jsonEncode(mp));
    } catch (error) {
      mp = {
        "islog": _islogin,
      };
      prefs.setString("login", jsonEncode(mp));
    }
  }

  Future<void> hideScreen() async {
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString("login");
    try {
      log=jsonDecode(res!);
    Future.delayed(Duration(seconds: 3), () {
      if(login==log["islog"]){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login()));
      }else{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home()));
      }
    });
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.flash_on,
              color: Colors.white,
              size: 150,
            ),
            Text(
              "Welcome to Flash",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
