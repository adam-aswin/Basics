import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController _controller = TextEditingController();
  List<dynamic> tasks = [];
  bool longPress = false;
  int editIndex = -1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTodos();
  }

  void getTodos() async {
    final prefs = await SharedPreferences.getInstance();
    final String res = prefs.getString("Todos")!;
    setState(() {
      tasks = jsonDecode(res);
      print(tasks);
    });
    print(tasks.length);
    _controller.clear();
  }

  void delete(index) async {
    final prefs = await SharedPreferences.getInstance();
    final res = prefs.getString("Todos");
    List<dynamic> _delete = jsonDecode(res!);
    _delete.removeAt(index);
    prefs.setString("Todos", jsonEncode(_delete));
    getTodos();
  }

  void editData() async {
    if (_controller.text != "") {
      print(_controller.text);
      final prefs = await SharedPreferences.getInstance();
      final res = prefs.getString("Todos");
      if (res != null) {
        List<dynamic> _tasks = jsonDecode(res);
        // _tasks.add(_controller.text);
        _tasks[editIndex] = _controller.text;
        prefs.setString("Todos", jsonEncode(_tasks));
        getTodos();
      } else {
        List<dynamic> _tasks = [_controller.text];
        prefs.setString("Todos", jsonEncode(_tasks));
        getTodos();
      }
      longPress = false;
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error !"),
              content: Text("Please Fill the Input Field"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Ok"),
                )
              ],
            );
          });
    }
  }

  void addTask() async {
    if (_controller.text != "") {
      print(_controller.text);
      final prefs = await SharedPreferences.getInstance();
      final res = prefs.getString("Todos");
      if (res != null) {
        List<dynamic> _tasks = jsonDecode(res);
        _tasks.add(_controller.text);
        prefs.setString("Todos", jsonEncode(_tasks));
        getTodos();
      } else {
        List<dynamic> _tasks = [_controller.text];
        prefs.setString("Todos", jsonEncode(_tasks));
        getTodos();
      }
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error !"),
              content: Text("Please Fill the Input Field"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Ok"),
                )
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 255, 248),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 248, 255, 248),
        title: Text(
          "TODO",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  height: 50,
                  child: Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        labelText: "Add Data",
                        labelStyle: TextStyle(
                          fontSize: 13,
                          color: Colors.green[400],
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(30, 22, 30, 22),
                    backgroundColor: Colors.green[600],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    longPress ? editData() : addTask();
                  },
                  child: longPress
                      ? Text(
                          "EDIT",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 248, 255, 248),
                          ),
                        )
                      : Text(
                          "ADD",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 248, 255, 248),
                          ),
                        ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "TASKS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onLongPress: () {
                      // print(tasks[index]);
                      setState(() {
                        _controller.text = tasks[index];
                        longPress = true;
                        editIndex = index;
                      });
                    },
                    title: Text(
                      (tasks[index].toString()).toString(),
                      style: TextStyle(
                          // color: const Color.fromARGB(255, 248, 255, 248),
                          ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          delete(index);
                        });
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
