import 'package:flutter/material.dart';

class Todos extends StatefulWidget {
  const Todos({super.key});

  @override
  State<Todos> createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  List<String> todo = [];
  TextEditingController _controller = TextEditingController();
  void generate() {
    setState(() {
      todo.add(_controller.text);
      print(todo);
    });
    _controller.clear();
  }

  void delete(index) {
    setState(() {
      todo.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODOS"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: "Add task",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(22),
                  child: Text(
                    "ADD",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: generate,
                )
              ],
            ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "TASKS",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: todo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      todo[index].toString(),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        delete(index);
                      },
                      icon: Icon(Icons.delete),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
