import 'package:flutter/material.dart';

class JobCard2 extends StatelessWidget {
  final String? job;
  final String? icon;
  final String? hr;
  final String? time;

  JobCard2({this.job, this.icon, this.hr, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
      width: 320,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[700],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 30,
                width: 30,
                child: Image.asset(icon.toString()),
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey,
                ),
                child: Text(
                  time.toString(),
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            job.toString(),
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: "Noto",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.currency_rupee,
                color: Colors.white,
                size: 13,
              ),
              Text(
                hr.toString(),
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  // fontFamily: "Noto",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
