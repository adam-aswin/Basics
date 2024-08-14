import 'package:flutter/material.dart';

class GridviewBuilderWidget extends StatelessWidget {
  final List<Map<dynamic, dynamic>> _post = [
    {"name": "Aswin", "Job": "Flutter"},
    {"name": "alan", "Job": "python"},
    {"name": "avin", "Job": "mern"},
    {"name": "anu", "Job": "c++"},
    {"name": "sharu", "Job": "php"},
    {"name": "manu", "Job": "flutter"},
    {"name": "alvin", "Job": "python"},
    {"name": "Aswin", "Job": "Flutter"},
    {"name": "alan", "Job": "python"},
    {"name": "avin", "Job": "mern"},
    {"name": "anu", "Job": "c++"},
    {"name": "sharu", "Job": "php"},
    {"name": "manu", "Job": "flutter"},
    {"name": "alvin", "Job": "python"},
    {"name": "Aswin", "Job": "Flutter"},
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
          itemCount: _post.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 2 / 3,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              // margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 100,
              height: 100,
              color: Colors.green,
              child: Text(_post[index]["name"]),
            );
          },
        ),
      ),
    );
  }
}
