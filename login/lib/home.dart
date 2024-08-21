import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title:  Center(
          child: Text(
                        "WELCOME TO GREENI",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            child: Image.asset(
              "./images/computer.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .7,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 
                        Container(
                          width: MediaQuery.of(context).size.width*.6,
                          height: 47,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.only(left: 80,right: 80),
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "/login");
                            },
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*.6,
                    height: 47,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/sign");
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(left: 78,right: 78),
                        backgroundColor: Color.fromARGB(255, 218, 255, 223),
                      ),
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  )
                      
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
