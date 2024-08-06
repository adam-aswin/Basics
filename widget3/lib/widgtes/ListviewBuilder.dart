import 'package:flutter/material.dart';

class ListviewBuilderWidget extends StatelessWidget {
  final List<Map<dynamic, dynamic>> _post = [
    {"name": "Aswin", "Job": "Flutter"},
    {"name": "alan", "Job": "python"},
    {"name": "avin", "Job": "mern"},
    {"name": "anu", "Job": "c++"},
    {"name": "sharu", "Job": "php"},
    {"name": "manu", "Job": "flutter"},
    {"name": "alvin", "Job": "python"},{"name": "Aswin", "Job": "Flutter"},
    {"name": "alan", "Job": "python"},
    {"name": "avin", "Job": "mern"},
    {"name": "anu", "Job": "c++"},
    {"name": "sharu", "Job": "php"},
    {"name": "manu", "Job": "flutter"},
    {"name": "alvin", "Job": "python"},{"name": "Aswin", "Job": "Flutter"},
    {"name": "alan", "Job": "python"},
    {"name": "avin", "Job": "mern"},
    {"name": "anu", "Job": "c++"},
    {"name": "sharu", "Job": "php"},
    {"name": "manu", "Job": "flutter"},
    {"name": "alvin", "Job": "python"},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: _post.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_post[index]["name"].toString()),
                  subtitle: Text(_post[index]["Job"].toString()),
                );
              }),
        ),
      ),
    );
  }
}
