import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class StudentHome extends StatefulWidget {
  const StudentHome({super.key});

  @override
  State<StudentHome> createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  List datas = [];
  final _data = Hive.box('mydata');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData() {
    // print(_data.get(1));
    if (_data.get('key') != null) {
      datas = _data.get('key');
    } else {
      print("Null Value");
    }
    print(_data.get('key'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/add");
            },
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return ListTile(
            // leading: Icon(Icons.),
            title: _data.get('key') != null
                ? Text(
                    datas[index]["Name"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                : Text("null"),
            subtitle: Text(
              'Age : ${datas[index]["Age"]}',
              style: TextStyle(color: Colors.white70),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total Mark",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${int.parse(datas[index]["marks"]["Phy"]) + int.parse(datas[index]["marks"]["Chem"]) + int.parse(datas[index]["marks"]["Maths"])}',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
