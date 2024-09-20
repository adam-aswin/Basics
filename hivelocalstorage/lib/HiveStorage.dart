import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Hivestorage extends StatefulWidget {
  const Hivestorage({super.key});

  @override
  State<Hivestorage> createState() => _HivestorageState();
}

class _HivestorageState extends State<Hivestorage> {
  final _mybox = Hive.box('mybox');

  void writeData() {
    _mybox.put(1, 'Hive_Flutter');
    print("Data Added");
  }

  void readData() {
    print(_mybox.get(1));
  }

  void removeData() {
    _mybox.delete(1);
    print("Successfully removed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive Storage"),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: writeData,
              child: Text("Write Data"),
            ),
            MaterialButton(
              color: Colors.green,
              onPressed: readData,
              child: Text("Read Data"),
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: removeData,
              child: Text("Remove Data"),
            ),
          ],
        ),
      ),
    );
  }
}
