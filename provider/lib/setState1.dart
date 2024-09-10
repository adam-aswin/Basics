import 'package:flutter/material.dart';
import 'package:provider/setState2.dart';

class Setstate1 extends StatefulWidget {
  const Setstate1({super.key});

  @override
  State<Setstate1> createState() => _Setstate1State();
}

class _Setstate1State extends State<Setstate1> {
  List<int> numbers = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Setstate2(number: numbers),
                ),
              );
            },
            icon: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body: Column(
        children: [
          Text("Total Count is ${numbers.length}"),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${numbers[index]}'),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numbers.add(numbers.last + 1);
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
