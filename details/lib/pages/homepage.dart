import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<dynamic> tasks = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    display();
  }

  void display() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String res = prefs.getString("Stud")!;

    setState(() {
      tasks = jsonDecode(res);
    });
    print(tasks);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 251, 252),
        title: Text("STUDENTS"),
        centerTitle: true,
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 1, 198, 224),
            padding: EdgeInsets.all(20)),
        onPressed: () {
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
        child: Expanded(
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/output",
                      arguments: jsonEncode(
                        tasks[index],
                      ),
                    );
                  },
                  child: Text(
                    tasks[index]["name"],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
