import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // List<dynamic> tasks = [];
    
    
    return Scaffold(
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 1, 198, 224),
          padding: EdgeInsets.all(20)
        ),
        onPressed: (){
          Navigator.pushNamed(context, "/input");
        },
        child: Icon(
          Icons.add,
          color: const Color.fromARGB(255, 241, 251, 252),
          ),
        ),
      backgroundColor: const Color.fromARGB(255, 241, 251, 252),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
                child: Text("Empty"),
                ),
        // Expanded(
        //   child: ListView.builder(
        //     itemCount: 1,
        //     itemBuilder: (context, index) {
        //       return ;
        //     },
        //     )
        //   ),
      ),
    );
  }
}