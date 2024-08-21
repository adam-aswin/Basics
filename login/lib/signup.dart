import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    void navigator(){
      Navigator.pushNamed(context, "/login");
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title:  Text(
                      "SIGNUP",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            child: Image.asset(
              "./images/client.jpg",
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
                          padding: EdgeInsets.only(left: 25,right: 25),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 218, 255, 223),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.green,
                                size: 20,
                                ),SizedBox(width: 10,),
                              Expanded(
                                child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter your e-mail...",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                  ),
                                  enabled: true,
                                  border: InputBorder.none,
                                ),
                                                          ),
                              ),
                            ],
                          ),
                        ),SizedBox(
                          height: 10,
                        ),
                        Container(
                        width: MediaQuery.of(context).size.width*.6,
                          height: 47,
                          padding: EdgeInsets.only(left: 25,right: 25),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 218, 255, 223),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.lock,
                                color: Colors.green,
                                size: 20,
                              ),SizedBox(width: 10,),
                              Expanded(
                                child: TextField(
                                decoration: InputDecoration(
                                  
                                   hintText: "Enter your password...",
                                  hintStyle: TextStyle(
                                    color: Colors.green,
                                    fontSize: 14,
                                  ),
                                  enabled: true,
                                  border: InputBorder.none,
                                ),
                                                          ),
                              ),
                              Icon(
                                Icons.remove_red_eye,
                                color: Colors.green,
                                size: 20,
                              ),
                            ],
                          ),
                        ),SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*.6,
                          height: 47,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.only(left: 80,right: 80),
                              backgroundColor: Colors.green,
                            ),
                            onPressed: () {
                              // Navigator.pushNamed(context, "/sign");
                            },
                            child: Text(
                              "SIGNUP",
                              style: TextStyle(
                                color: Colors.white,
                                
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an Account ? ",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                            ),
                            GestureDetector(
                              onTap: navigator,
                              child: Text("Sign in",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              
                            ),
                            ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 30,right: 5),
                              width: MediaQuery.of(context).size.width*.5,
                              child: Divider(
                                color: Colors.green,
                              ),
                            ),
                            Text("OR"),
                            Container(
                              padding: EdgeInsets.only(right: 30,left: 5),
                              width: MediaQuery.of(context).size.width*.45,
                              child: Divider(
                                color: Colors.green,
                              ),
                            )
                          ],
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