import 'package:flutter/material.dart';

class PageWork extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, bottom: 30),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .4,
                color: Colors.grey,
                child: Image.asset(
                  "./images/lake.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: 50,
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Oeschinen Lake Campground",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Kandersteg,Switzerland",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    Text(
                      "41",
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.only(left: 100, right: 100),
                width: MediaQuery.of(context).size.width,
                height: 50,
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 2, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.purple[900],
                            size: 23,
                          ),
                          Spacer(),
                          Icon(
                            Icons.send,
                            color: Colors.purple[900],
                            size: 23,
                          ),
                          Spacer(),
                          Icon(
                            Icons.share,
                            color: Colors.purple[900],
                            size: 23,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "CALL",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.purple[900],
                          ),
                        ),
                        Spacer(),
                        Text(
                          "ROUTE",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.purple[900],
                          ),
                        ),
                        Spacer(),
                        Text(
                          "SHARE",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.purple[900],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                height: 210,
                // color: Colors.amber,
                child: Text(
                    "Lake Oeschinen lies at the foot of the Blüemlisalp. Situated 1,578 meter above sea level, it is one of the larger Alpine Lakes. A gondola train leads from Kandersteg to a location near the lake. A half-hour walk across pastures and through pine forest takes you to the lake. The water in the lake warms up to 20 degree Celsius in the summer. Activities enjoyed here include rowing or riding on the summer toboggan run."),
              )
            ],
          ),
        ),
      ),
    );
  }
}
