import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool obs = true;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    void touched() {
      setState(() {
        if (obs == true) {
          obs = false;
        } else {
          obs = true;
        }
      });
    }

    void navigator() {
      Navigator.pushNamed(context, "/sign");
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          "LOGIN",
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
              "./images/privacy.jpg",
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
                    width: MediaQuery.of(context).size.width * .6,
                    height: 47,
                    padding: EdgeInsets.only(left: 25, right: 25),
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
                        ),
                        SizedBox(
                          width: 10,
                        ),
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .6,
                    height: 47,
                    padding: EdgeInsets.only(left: 25, right: 25),
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
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextField(
                            obscureText: obs,
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
                        GestureDetector(
                          onTap: touched,
                          child: obs == true
                              ? Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.green,
                                  size: 20,
                                )
                              : Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.green,
                                  size: 20,
                                ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .6,
                    height: 47,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(left: 80, right: 80),
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        // Navigator.pushNamed(context, "/sign");
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account ? ",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      GestureDetector(
                        onTap: navigator,
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
