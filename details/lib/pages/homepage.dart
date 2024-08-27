import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Map<dynamic,dynamic>> tasks = [];
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   // display();
  // }
    void display()async{
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString("Stud");
    tasks=jsonDecode(res!);
    setState(() {
      
      Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Text(tasks[0]["name"]);
            },),);
    });
    print(tasks);
    }
  @override
  Widget build(BuildContext context) {
    


    
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
        child: GestureDetector(
          onTap: display,
          child: Icon(Icons.man),

        ),
      ),
    );
  }
}