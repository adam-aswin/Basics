import 'package:flutter/material.dart';

class Setstate2 extends StatefulWidget {
  final number;
  const Setstate2({super.key, required this.number});

  @override
  State<Setstate2> createState() => _Setstate2State();
}

class _Setstate2State extends State<Setstate2> {
  List<int> numbers = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text("Total Count is ${widget.number.length}"),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.number.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${widget.number[index]}'),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.number.add(widget.number.last + 1);
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
