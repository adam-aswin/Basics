import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                color: Colors.grey[900],
                alignment: Alignment.bottomCenter,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("./images/Tony-Stark.webp"),
                ),
              ),
              Container(
                // height: 80,
                margin: EdgeInsets.only(top: 20, bottom: 5),
                color: Colors.grey[900],
                alignment: Alignment.center,
                child: Text(
                  "Tony Stark",
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Oswald",
                      color: Color.fromARGB(225, 255, 255, 255)),
                ),
              ),
              Container(
                // height: 80,
                color: Colors.grey[900],
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Flutter Developer",
                  style: TextStyle(
                      fontSize: 19,
                      /*fontFamily: "Oswald"*/ color: Color.fromARGB(225, 255, 255, 255)),
                ),
              ),
              Container(
                width: 400,
                height: 20,
                margin: EdgeInsets.only(bottom: 30),
                child: Divider(
                  color: Colors.white24,
                ),
              ),
              Container(
                  width: 400,
                  height: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[900],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(5, 5)),
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-5, -5)),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact info",
                        style: TextStyle(
                            fontFamily: "Oswald",
                            fontSize: 15,
                            color: Color.fromARGB(225, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.phone,
                            color: Color.fromARGB(225, 255, 255, 255),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "8590717324",
                            style: TextStyle(color: Color.fromARGB(225, 255, 255, 255)),
                          )
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 400,
                  height: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[900],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(5, 5)),
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-5, -5)),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "E-Mail",
                        style: TextStyle(
                            fontFamily: "Oswald",
                            fontSize: 15,
                            color: Color.fromARGB(225, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.email,
                            color: Color.fromARGB(225, 255, 255, 255),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "tonystark@gmail.com",
                            style: TextStyle(color: Color.fromARGB(225, 255, 255, 255)),
                          )
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
