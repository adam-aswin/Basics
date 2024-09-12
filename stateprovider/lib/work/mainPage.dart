import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/work/AddTask.dart';
import 'package:stateprovider/work/editpage.dart';
import 'package:stateprovider/work/provders.dart/taskprovider.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  // List tasks = [];
  void delete() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<Taskprovider>(
      builder: (context, TaskproviderModal, child) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AddTask()));
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
            )
          ],
          title: Text(
            "Home",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: TaskproviderModal.task.length,
            itemBuilder: (context, index) {
              return ListTile(
                onLongPress: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Do You Want to Delete?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Cancel"),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  TaskproviderModal.task.removeAt(index);
                                });
                                Navigator.pop(context);
                              },
                              child: Text("Ok"),
                            ),
                          ],
                        );
                      });
                },
                title: Text(
                  '${TaskproviderModal.task[index]}',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/edit",
                        arguments: index.toString());
                  },
                  icon: Icon(
                    Icons.edit,
                    size: 20,
                    color: Colors.blueAccent[400],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
