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
      backgroundColor: const Color.fromARGB(255, 241, 251, 252),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 251, 252),
        title: Text("Home"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/add");
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: _data.get('key') != null
                ? Text(
                    datas[index]["Name"],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                : Text("null"),
            subtitle: Text('Age : ${datas[index]["Age"]}'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Marks",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Text(
                    '${datas[index]["marks"]["Phy"]} ${datas[index]["marks"]["Chem"]} ${datas[index]["marks"]["Maths"]}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
