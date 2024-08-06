import 'package:flutter/material.dart';

class Jobcard extends StatelessWidget {
  final String? job;
  final String? company;
  final String? hr;
  final String? icon;
  Jobcard({this.job, this.company, this.hr, this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        job.toString(),
        style: TextStyle(fontFamily: "Noto"),
      ),
      subtitle: Text(
        company.toString(),
        style: TextStyle(fontSize: 10),
      ),
      leading: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2,
                  spreadRadius: 1,
                  offset: Offset(3, 3)),
            ]),
        width: 40,
        height: 40,
        child: Icon(
          Icons.apple,
          size: 35,
        ),
      ),
      trailing: Container(
        width: 50,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.green,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.currency_rupee,
              color: Colors.white,
              size: 10,
            ),
            Text(
              "${hr}/h",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
