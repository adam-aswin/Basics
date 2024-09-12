import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/work/provders.dart/taskprovider.dart';

class Editpage extends StatefulWidget {
  const Editpage({super.key});

  @override
  State<Editpage> createState() => _EditpageState();
}

class _EditpageState extends State<Editpage> {
  TextEditingController _controller = TextEditingController();
  int? index;

  @override
  Widget build(BuildContext context) {
    index = int.parse(ModalRoute.of(context)!.settings.arguments as String);
    return Consumer<Taskprovider>(
      builder: (context, TaskproviderModal, child) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: Colors.black,
            title: Text(
              "Edit",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            centerTitle: true,
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
                    onTap: () {
                      _controller.text = TaskproviderModal.task[index!];
                    },
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
                        hintText: TaskproviderModal.task[index!],
                        hintStyle: TextStyle(
                          color: Colors.white,
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
                      TaskproviderModal.task[index!] = data;
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/main", (route) => false);
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Empty"),
                              content: Text("Please fill the feild"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Ok"),
                                ),
                              ],
                            );
                          });
                    }
                  },
                  onLongPress: () {
                    _controller.text = TaskproviderModal.task[index!];
                    // show();
                  },
                  child: Text(
                    "SAVE",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
