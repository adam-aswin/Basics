import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/provider/numberListProvider.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, NumberListModal, child) => Scaffold(
        appBar: AppBar(
          title: Text("Second page"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Text("Total Count is ${NumberListModal.numbers.length}"),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: NumberListModal.numbers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${NumberListModal.numbers[index]}'),
                  );
                },
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            NumberListModal.addNumbers();
          },
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
