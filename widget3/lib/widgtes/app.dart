import 'package:flutter/material.dart';

class NewApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // color: Colors.white30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text(
                    "Discover a New Path",
                    style: TextStyle(
                        fontFamily: "Tibaten",
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.only(left: 10, right: 10),
                width: MediaQuery.of(context).size.width,
                height: 45,
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      width: MediaQuery.of(context).size.width * .7,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                spreadRadius: 1,
                                offset: Offset(4, 4)),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                enabled: true,
                                hintText: "Search for Job...",
                                hintStyle: TextStyle(
                                    fontFamily: "Tibaten", fontSize: 14),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 50,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[700],
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                spreadRadius: 1,
                                offset: Offset(3, 3))
                          ]),
                      child: Icon(
                        Icons.filter_list,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                width: double.infinity,
                height: 45,
                child: Text(
                  "For you",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 0,
                child: Container(
                    margin: EdgeInsets.only(left: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    // color: Colors.green,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 35, 20, 35),
                          width: 350,
                          height: double.infinity,
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
                                    child: Image.asset("./lib/icons/ios.png"),
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
                                      "Part time",
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
                                "IOS Developer",
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
                                    "400/h",
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
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 35, 20, 35),
                          width: 350,
                          height: double.infinity,
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
                                    child:
                                        Image.asset("./lib/icons/facebook.png"),
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
                                      "Part time",
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
                                "React Developer",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Noto",
                                  color: Colors.white,
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
                                    "400/h",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 35, 20, 35),
                          width: 350,
                          height: double.infinity,
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
                                    child: Image.asset(
                                        "./lib/icons/instagram.png"),
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
                                      "Part time",
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
                                "Python Developer",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Noto",
                                  color: Colors.white,
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
                                    "400/h",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 35, 20, 35),
                          width: 350,
                          height: double.infinity,
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
                                    child:
                                        Image.asset("./lib/icons/search.png"),
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
                                      "Part time",
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
                                "Flutter Developer",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Noto",
                                  color: Colors.white,
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
                                    "400/h",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 35, 20, 35),
                          width: 350,
                          height: double.infinity,
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
                                    child:
                                        Image.asset("./lib/icons/youtube.png"),
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
                                      "Part time",
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
                                "Django Developer",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Noto",
                                  color: Colors.white,
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
                                    "400/h",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 35, 20, 35),
                          width: 350,
                          height: double.infinity,
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
                                    child: Image.asset("./lib/icons/ios.png"),
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
                                      "Part time",
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
                                "IOS Developer",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Noto",
                                  color: Colors.white,
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
                                    "400/h",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 35, 20, 35),
                          width: 350,
                          height: double.infinity,
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
                                    child:
                                        Image.asset("./lib/icons/facebook.png"),
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
                                      "Part time",
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
                                "React Developer",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Noto",
                                  color: Colors.white,
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
                                    "400/h",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 35, 20, 35),
                          width: 350,
                          height: double.infinity,
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
                                    child: Image.asset(
                                        "./lib/icons/instagram.png"),
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
                                      "Part time",
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
                                "Python Developer",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Noto",
                                  color: Colors.white,
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
                                    "400/h",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 35, 20, 35),
                          width: 350,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[800],
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
                                    child:
                                        Image.asset("./lib/icons/search.png"),
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
                                      "Part time",
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
                                "Flutter Developer",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Noto",
                                  color: Colors.white,
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
                                    "400/h",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 35, 20, 35),
                          width: 350,
                          height: double.infinity,
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
                                    child:
                                        Image.asset("./lib/icons/youtube.png"),
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
                                      "Part time",
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
                                "Django Developer",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Noto",
                                  color: Colors.white,
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
                                    "400/h",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                width: double.infinity,
                height: 45,
                child: Text(
                  "For you",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  // padding: EdgeInsets.only(bottom: 10),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .35,
                  // color: Colors.green,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      ListTile(
                        title: Text(
                          "IOS Developer",
                          style: TextStyle(fontFamily: "Noto"),
                        ),
                        subtitle: Text(
                          "Apple",
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
                                "400/h",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          "React Developer",
                          style: TextStyle(fontFamily: "Noto"),
                        ),
                        subtitle: Text(
                          "Face Book",
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(5),
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
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("./lib/icons/facebook.png"),
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
                                "400/h",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          "Python Developer",
                          style: TextStyle(fontFamily: "Noto"),
                        ),
                        subtitle: Text(
                          "Instagram",
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(5),
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
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("./lib/icons/instagram.png"),
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
                                "400/h",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          "Flutter Developer",
                          style: TextStyle(fontFamily: "Noto"),
                        ),
                        subtitle: Text(
                          "Google",
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(5),
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
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("./lib/icons/search.png"),
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
                                "400/h",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          "Django Developer",
                          style: TextStyle(fontFamily: "Noto"),
                        ),
                        subtitle: Text(
                          "YouTube",
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(5),
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
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("./lib/icons/youtube.png"),
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
                                "400/h",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          "IOS Developer",
                          style: TextStyle(fontFamily: "Noto"),
                        ),
                        subtitle: Text(
                          "Apple",
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
                                "400/h",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          "React Developer",
                          style: TextStyle(fontFamily: "Noto"),
                        ),
                        subtitle: Text(
                          "Face Book",
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(5),
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
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("./lib/icons/facebook.png"),
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
                                "400/h",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          "Python Developer",
                          style: TextStyle(fontFamily: "Noto"),
                        ),
                        subtitle: Text(
                          "Instagram",
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(5),
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
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("./lib/icons/instagram.png"),
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
                                "400/h",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          "Flutter Developer",
                          style: TextStyle(fontFamily: "Noto"),
                        ),
                        subtitle: Text(
                          "Google",
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(5),
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
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("./lib/icons/search.png"),
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
                                "400/h",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: Text(
                          "Django Developer",
                          style: TextStyle(fontFamily: "Noto"),
                        ),
                        subtitle: Text(
                          "YouTube",
                          style: TextStyle(fontSize: 10),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(5),
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
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("./lib/icons/youtube.png"),
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
                                "400/h",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
