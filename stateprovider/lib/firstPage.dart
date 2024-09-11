import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/provider/numberListProvider.dart';
import 'package:stateprovider/secondpage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, NumberListModal, child) => Scaffold(
        appBar: AppBar(
          title: Text("Main page"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Secondpage(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward_ios),
            )
          ],
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
