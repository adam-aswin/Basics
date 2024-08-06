import 'package:flutter/material.dart';

class CardWork extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            width: 320,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Colors.blueAccent,
                gradient: LinearGradient(
                    colors: [Colors.blueAccent, Color.fromARGB(255, 2, 37, 78)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 8,
                      offset: Offset(5, 5))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 27,
                      child: ClipRRect(
                        child: Image.asset(
                          "./images/chip1.png",
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.contactless_outlined,
                      size: 28,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "1234",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Oswald",
                          fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      "5678",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Oswald",
                          fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      "9756",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Oswald",
                          fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      "2654",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Oswald",
                          fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "valid\nfrom",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "01/23",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Oswald",
                          fontSize: 12),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "valid\nupto",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "01/26",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Oswald",
                          fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "ASWIN",
                      style:
                          TextStyle(fontFamily: "Oswald", color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      "VISA",
                      style: TextStyle(
                          fontFamily: "Trajan",
                          color: Colors.white,
                          fontSize: 30),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
