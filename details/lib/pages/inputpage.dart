import 'dart:convert';

import 'package:flutter/material.dart';

class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  TextEditingController _c1=TextEditingController();
    TextEditingController _c2=TextEditingController();
    TextEditingController _c3=TextEditingController();
    TextEditingController _c4=TextEditingController();
    TextEditingController _c5=TextEditingController();
    TextEditingController _c6=TextEditingController();
    TextEditingController _c7=TextEditingController();
    TextEditingController _c8=TextEditingController();
    TextEditingController _c9=TextEditingController();
    TextEditingController _c10=TextEditingController();
    TextEditingController _c11=TextEditingController();
    TextEditingController _c12=TextEditingController();
    TextEditingController _c13=TextEditingController();
    TextEditingController _c14=TextEditingController();
    final Map data={};
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 251, 252),
        title: Text(
          "STUDENT DETAILS",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 241, 251, 252),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * .6,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c1,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "First Name",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c2,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Last Name",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c3,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Date Of Birth",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c4,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Email Id",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c5,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Mobile Number",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c6,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Gender",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c7,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Address",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c8,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "City",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c9,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Pin Code",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c10,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "State",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c11,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Country",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c12,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Hobbies",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c13,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Qualification",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                    Expanded(
                      child: TextField(
                        controller: _c14,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 92, 231, 250),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 2,
                                color: const Color.fromARGB(255, 1, 198, 224),
                              )),
                          enabled: true,
                          labelText: "Course",
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 1, 198, 224),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset("./images/book.jpg"),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 1, 198, 224),
                      shadowColor: const Color.fromARGB(255, 92, 231, 250),
                    ),
                    onPressed: (){
                      setState(() {
                        data["first"]=_c1.text;
                        data["last"]=_c2.text;
                        data["date"]=_c3.text;
                        data["email"]=_c4.text;
                        data["no"]=_c5.text;
                        data["gender"]=_c6.text;
                        data["add"]=_c7.text;
                        data["city"]=_c8.text;
                        data["pin"]=_c9.text;
                        data["state"]=_c10.text;
                        data["country"]=_c11.text;
                        data["hob"]=_c12.text;
                        data["qual"]=_c13.text;
                        data["course"]=_c14.text;
                      });
                      print(data);
                      Navigator.pushNamed(context, "/output",arguments: jsonEncode(data),);
                    },
                    child: Text("Submit",style: TextStyle(
                      color: const Color.fromARGB(255, 241, 251, 252),
                    ),),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}