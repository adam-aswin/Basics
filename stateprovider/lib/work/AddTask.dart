import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:stateprovider/work/mainPage.dart';
import 'package:stateprovider/work/provders.dart/taskprovider.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskprovider>(
      builder: (context, TaskproviderModal, child) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            "Add Task",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // padding: EdgeInsets.only(
                //   left: 15,
                // ),
                height: 50,
                width: MediaQuery.of(context).size.width * .6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[800],
                ),
                child: TextField(
                  controller: _controller,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.blueAccent,
                          width: 2,
                        ),
                      ),
                      hintText: "Add Task",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.blueAccent[400],
                ),
                onPressed: () {
                  if (_controller.text != "") {
                    var data = _controller.text;
                    TaskproviderModal.addTask(data);
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/main", (route) => false);
                    print(_controller.text);
                  }
                  _controller.clear();
                },
                child: Text(
                  "ADD",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
