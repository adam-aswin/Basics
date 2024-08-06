import 'package:flutter/material.dart';

class BaseApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.grey[900],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                // margin: EdgeInsets.only(top: 10),
                color: Colors.grey[900],
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10),
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(""),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(""),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(""),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(""),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(""),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(""),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(""),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(""),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Divider(
                  color: Colors.grey[700],
                ),
              ),
              Container(
                height: 650,
                color: Colors.grey[900],
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      height: 35,
                      // color: Colors.grey[800],
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(""),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10)),
                        color: Colors.grey[800],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 40,
                        right: 40,
                      ),
                      height: 300,
                      color: Colors.green,
                      // child: Image(image: AssetImage("")),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      height: 35,
                      color: Colors.grey[800],
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.chat_bubble_rounded,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.send_rounded)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      height: 35,
                      // color: Colors.grey[800],
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 15,
                        // backgroundImage: AssetImage(""),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10)),
                        color: Colors.grey[800],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 40,
                        right: 40,
                      ),
                      height: 300,
                      color: Colors.green,
                      // child: Image(image: AssetImage("")),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      height: 35,
                      color: Colors.grey[800],
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.chat_bubble,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.send_rounded)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      height: 35,
                      // color: Colors.grey[800],
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 15,
                        // backgroundImage: AssetImage(""),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10)),
                        color: Colors.grey[800],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 40,
                        right: 40,
                      ),
                      height: 300,
                      color: Colors.green,
                      // child: Image(image: AssetImage("")),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      height: 35,
                      color: Colors.grey[800],
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.chat_bubble,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.send_rounded)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      height: 35,
                      // color: Colors.grey[800],
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 15,
                        // backgroundImage: AssetImage(""),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10)),
                        color: Colors.grey[800],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 40,
                        right: 40,
                      ),
                      height: 300,
                      color: Colors.green,
                      // child: Image(image: AssetImage("")),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      height: 35,
                      color: Colors.grey[800],
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.chat_bubble,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.send_rounded)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
