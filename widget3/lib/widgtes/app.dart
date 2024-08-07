import 'package:flutter/material.dart';
import 'package:widget3/widgtes/jobcard.dart';
import 'package:widget3/widgtes/jobcard2.dart';

class NewApp1 extends StatelessWidget {
  final List<Map<dynamic, dynamic>> _jobs = [
    {
      "job": "IOS Developer",
      "company": "Apple",
      "icon": "./lib/icons/ios.png",
      "hr": "400/h",
      "time": "Part time"
    },
    {
      "job": "React Developer",
      "company": "Face Book",
      "icon": "./lib/icons/facebook.png",
      "hr": "400/h",
      "time": "Part time"
    },
    {
      "job": "Python Developer",
      "company": "Instagram",
      "icon": "./lib/icons/instagram.png",
      "hr": "400/h",
      "time": "Part time"
    },
    {
      "job": "Flutter Developer",
      "company": "Google",
      "icon": "./lib/icons/search.png",
      "hr": "400/h",
      "time": "Part time"
    },
    {
      "job": "Django Developer",
      "company": "YouTube",
      "icon": "./lib/icons/youtube.png",
      "hr": "400/h",
      "time": "Part time"
    },
    {
      "job": "IOS Developer",
      "company": "Apple",
      "icon": "./lib/icons/ios.png",
      "hr": "400/h",
      "time": "Part time"
    },
    {
      "job": "React Developer",
      "company": "Face Book",
      "icon": "./lib/icons/facebook.png",
      "hr": "400/h",
      "time": "Part time"
    },
    {
      "job": "Python Developer",
      "company": "Instagram",
      "icon": "./lib/icons/instagram.png",
      "hr": "400/h",
      "time": "Part time"
    },
    {
      "job": "Flutter Developer",
      "company": "Google",
      "icon": "./lib/icons/search.png",
      "hr": "400/h",
      "time": "Part time"
    },
    {
      "job": "Django Developer",
      "company": "YouTube",
      "icon": "./lib/icons/youtube.png",
      "hr": "400/h",
      "time": "Part time"
    },
  ];
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
              Expanded(
                flex: 0,
                child: Container(
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
              ),
              Expanded(
                flex: 0,
                child: Container(
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
              ),
              Expanded(
                flex: 0,
                child: Container(
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
              ),
              // ===============================================================
              Container(
                margin: EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width,
                height: 160,
                // color: Colors.green,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _jobs.length,
                    itemBuilder: (context, index) {
                      return JobCard2(
                        icon: _jobs[index]["icon"],
                        time: _jobs[index]["time"],
                        job: _jobs[index]["job"],
                        hr: _jobs[index]["hr"],
                      );
                    }),
              ),
              // ===============================================================
              Expanded(
                flex: 0,
                child: Container(
                  margin:
                      EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: Text(
                    "For you",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              // ===========================================================
              Expanded(
                flex: 5,
                child: Container(
                  // padding: EdgeInsets.only(bottom: 10),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  // color: Colors.green,
                  child: ListView.builder(
                      itemCount: _jobs.length,
                      itemBuilder: (context, index) {
                        return Jobcard1(
                          job: _jobs[index]["job"],
                          company: _jobs[index]["company"],
                          icon: _jobs[index]["icon"],
                          hr: _jobs[index]["hr"],
                        );
                      }),
                ),
              )
              // =====================================================================================
            ],
          ),
        ),
      ),
    );
  }
}
