import 'package:flutter/material.dart';

class Flip extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(5),
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Container(
                color: Colors.grey[900],
                child: Stack(
                  children: [
                    Container(
                      height: 165,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "./images/tj.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    // ),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PUMA",
                              style: TextStyle(fontFamily: "Oswald"),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_downward,
                                  size: 17,
                                ),
                                Text(
                                  "70%",
                                  style: TextStyle(fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "3,999",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "1,199",
                                  style: TextStyle(fontFamily: "Trajan"),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey[900],
                child: Stack(
                  children: [
                    Container(
                      height: 165,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "./images/tj.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    // ),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PUMA",
                              style: TextStyle(fontFamily: "Oswald"),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_downward,
                                  size: 17,
                                ),
                                Text(
                                  "70%",
                                  style: TextStyle(fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "3,999",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "1,199",
                                  style: TextStyle(fontFamily: "Trajan"),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey[900],
                child: Stack(
                  children: [
                    Container(
                      height: 165,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "./images/tj.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    // ),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PUMA",
                              style: TextStyle(fontFamily: "Oswald"),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_downward,
                                  size: 17,
                                ),
                                Text(
                                  "70%",
                                  style: TextStyle(fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "3,999",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "1,199",
                                  style: TextStyle(fontFamily: "Trajan"),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey[900],
                child: Stack(
                  children: [
                    Container(
                      height: 165,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "./images/tj.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    // ),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PUMA",
                              style: TextStyle(fontFamily: "Oswald"),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_downward,
                                  size: 17,
                                ),
                                Text(
                                  "70%",
                                  style: TextStyle(fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "3,999",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "1,199",
                                  style: TextStyle(fontFamily: "Trajan"),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey[900],
                child: Stack(
                  children: [
                    Container(
                      height: 165,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "./images/tj.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    // ),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PUMA",
                              style: TextStyle(fontFamily: "Oswald"),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_downward,
                                  size: 17,
                                ),
                                Text(
                                  "70%",
                                  style: TextStyle(fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "3,999",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "1,199",
                                  style: TextStyle(fontFamily: "Trajan"),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey[900],
                child: Stack(
                  children: [
                    Container(
                      height: 165,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "./images/tj.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    // ),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PUMA",
                              style: TextStyle(fontFamily: "Oswald"),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_downward,
                                  size: 17,
                                ),
                                Text(
                                  "70%",
                                  style: TextStyle(fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "3,999",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "1,199",
                                  style: TextStyle(fontFamily: "Trajan"),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey[900],
                child: Stack(
                  children: [
                    Container(
                      height: 165,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "./images/tj.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    // ),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PUMA",
                              style: TextStyle(fontFamily: "Oswald"),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_downward,
                                  size: 17,
                                ),
                                Text(
                                  "70%",
                                  style: TextStyle(fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "3,999",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "1,199",
                                  style: TextStyle(fontFamily: "Trajan"),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey[900],
                child: Stack(
                  children: [
                    Container(
                      height: 165,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "./images/tj.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    // ),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PUMA",
                              style: TextStyle(fontFamily: "Oswald"),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_downward,
                                  size: 17,
                                ),
                                Text(
                                  "70%",
                                  style: TextStyle(fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "3,999",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "1,199",
                                  style: TextStyle(fontFamily: "Trajan"),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey[900],
                child: Stack(
                  children: [
                    Container(
                      height: 165,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "./images/tj.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Align(
                    //   alignment: Alignment.topCenter,
                    // ),
                    Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Icons.favorite_rounded,
                          color: Colors.white,
                        )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 85,
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PUMA",
                              style: TextStyle(fontFamily: "Oswald"),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_downward,
                                  size: 17,
                                ),
                                Text(
                                  "70%",
                                  style: TextStyle(fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "3,999",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontFamily: "Trajan"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.currency_rupee,
                                  size: 15,
                                ),
                                Text(
                                  "1,199",
                                  style: TextStyle(fontFamily: "Trajan"),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              ],
                            )
                          ],
                        ),
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
