import 'package:flutter/material.dart';

class Multiple extends StatefulWidget {
  const Multiple({super.key});

  @override
  State<Multiple> createState() => _MultipleState();
}

class _MultipleState extends State<Multiple> {
  TextEditingController _controller = TextEditingController();

  List ls = [];

  void generate() {
    print(_controller.text);
    var data = int.parse(_controller.text);
    setState(() {
      ls = [];
      for (var i = 1; i <= 10; i++) {
        ls.add("${i} x ${data} = ${i * data}");
      }
    });

    _controller.clear();
    print(ls);
  }

  void list() {
    setState(() {
      ls.clear();
    });
    print(ls);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: _controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
                    child: MaterialButton(
                      onPressed: generate,
                      child: Text("Generate"),
                      color: Colors.yellow,
                      height: 53,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .4,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[500],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1,
                          offset: Offset(4, 4)),
                    ]),
                child: ListTile(
                  subtitle: Container(
                    // height: MediaQuery.of(context).size.height * .4,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    // color: Colors.amber,
                    child: ListView.builder(
                      itemCount: ls.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(2),
                          // alignment: Alignment.center,
                          child: Text(
                            ls[index].toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      },
                    ),
                  ),
                  trailing: MaterialButton(
                    onPressed: list,
                    child: Icon(
                      Icons.delete,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
