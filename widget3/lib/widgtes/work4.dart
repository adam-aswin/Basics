import 'package:flutter/material.dart';

class PageWork2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .62,
                  // color: Colors.amber,
                  child: ClipRRect(
                    borderRadius: BorderRadiusDirectional.vertical(
                      bottom: Radius.circular(70),
                    ),
                    child: Image.asset(
                      "./images/chair2.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 30,
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 28,
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        "ACCENT CHAIR",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ]),
              Container(
                padding: EdgeInsets.only(left: 70, right: 70),
                margin: EdgeInsets.only(
                  top: 20,
                ),
                width: MediaQuery.of(context).size.width,
                height: 50,
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 3),
                      child: Text(
                        "ACCENT CHAIR",
                        style: TextStyle(fontSize: 30, fontFamily: "Tibaten"),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.attach_money_rounded,
                      size: 35,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: .7),
                      child: Text(
                        "30",
                        style: TextStyle(fontSize: 35, fontFamily: "Tibaten"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 70, right: 70),
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                height: 60,
                // color: Colors.amber,
                child: Text(
                  "Interior designers swear by the accent chair to enrich any space.  It is a common misconception that they are only a design element.",
                  style: TextStyle(fontSize: 13, color: Colors.black54),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 70, right: 70),
                margin: EdgeInsets.only(top: 13),
                width: MediaQuery.of(context).size.width,
                height: 50,
                // color: Colors.blue,
                child: Row(
                  children: [
                    Text(
                      "Choose Color",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Spacer(),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.pinkAccent[100]),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 50, right: 50),
                margin: EdgeInsets.only(top: 20, left: 90, right: 90),
                width: MediaQuery.of(context).size.width,
                height: 50,
                // color: Colors.green,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          print("Added to cart");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Add to cart",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            )
                          ],
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: EdgeInsets.all(17)),
                      ),
                    ),
                    Positioned(
                      right: 2,
                      bottom: -5,
                      child: Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text(
                          "2",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
