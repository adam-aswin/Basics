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
        backgroundColor: Colors.grey[850],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        showUnselectedLabels: true,
        useLegacyColorScheme: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            label: "manage",
            tooltip: "manage",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.payment,
              color: Colors.grey,
            ),
            label: "pay",
            tooltip: "pay",
          ),
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
        color: Colors.grey[850],
        child: Container(
          margin: EdgeInsets.only(top: 10),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
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
                      margin: EdgeInsets.only(top: 20),
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
                      margin: EdgeInsets.only(top: 20),
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
                height: 190,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(19),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "EXPLORE AIRTEL BESTSELLERS",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 227, 231, 243),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(Icons.router_rounded),
                              ),
                              Text(
                                "Wi-Fi",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 227, 231, 243),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(Icons.sim_card_rounded),
                              ),
                              Text(
                                "upgrade to",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "postpaid",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 227, 231, 243),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(Icons.settings_input_antenna),
                              ),
                              Text(
                                "DTH",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 227, 231, 243),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(Icons.sim_card_download),
                              ),
                              Text(
                                "new prepaid SIM",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            "./lib/icons/phone.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "call",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "manager",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            "./lib/icons/phone.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "rewards &",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "coupons",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            "./lib/icons/phone.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "refer & get",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          "₹ 300",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
