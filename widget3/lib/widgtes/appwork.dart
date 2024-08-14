// import 'dart:ffi';

import 'package:flutter/material.dart';

class AppWork extends StatelessWidget {
  const AppWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 15),
          child: Icon(
            Icons.account_circle,
            size: 45,
            color: Colors.teal[200],
          ),
        ),
        title: Column(
          children: [
            Text(
              "manage",
              style: TextStyle(color: Colors.white, letterSpacing: 1),
            ),
            Text(
              "plans and accounts",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white70,
                  fontWeight: FontWeight.w100),
            )
          ],
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(right: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color.fromARGB(255, 192, 191, 241)),
            child: Icon(
              Icons.qr_code_scanner,
              size: 20,
            ),
          ),
        ],
        backgroundColor: Colors.grey[900],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              label: "manage",
              tooltip: "manage"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.payment,
                color: Colors.grey,
              ),
              label: "pay",
              tooltip: "pay"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.grey,
              ),
              label: "shop",
              tooltip: "shop"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.grey,
              ),
              label: "help",
              tooltip: "help"),
        ],
      ),
      body: Container(
        color: Colors.grey[900],
        child: Container(
          margin: EdgeInsets.only(top: 10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: const Color.fromARGB(255, 227, 231, 243)),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width * .43,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "PREPAID",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey[600]),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.blue,
                                size: 13,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "2 GB",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("daily data left"),
                          Text("5G unlimited data"),
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                            height: 45,
                            width: double.infinity,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 227, 231, 243),
                            ),
                            child: Text(
                              "GET POSTPAID",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width * .43,
                      height: 250,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 60,
                            height: 70,
                            color: Colors.amber,
                            child: Image.asset(
                              "./images/hand1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Maximize savings\n& benefits",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Enjoy no daily limit\n& 75 GB data",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "GET POSTPAID",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("./images/sim.webp"),
                    Text(
                      "Home Delivery of New SIM,Get Prepaid",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
