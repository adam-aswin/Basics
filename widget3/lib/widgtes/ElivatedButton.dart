import 'package:flutter/material.dart';

class Elivatedbutton extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Elevated Button"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 10),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  print("Hello");
                },
                child: Text(
                  "Text Button",
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 30,
                    shadowColor: Colors.blueAccent),
              ),
              SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Outline Button",
                ),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 20,
                    shadowColor: Colors.blue),
              ),
              SizedBox(
                height: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Colors.black,
                style:
                    IconButton.styleFrom(backgroundColor: Colors.transparent),
              )
            ],
          ),
        ),
      ),
    );
  }
}
