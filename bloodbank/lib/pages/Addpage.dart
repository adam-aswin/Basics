import 'package:flutter/material.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 168, 12, 0),
          title: Text(
            "Create Profile",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                icon: Icon(
                  Icons.done,
                  color: Colors.white,
                ))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 120),
                    ),
                    color: const Color.fromARGB(255, 168, 12, 0),
                  ),
                ),
                Positioned(
                    bottom: -50,
                    left: 150,
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.person,
                        size: 100,
                      ),
                    )),
                Positioned(
                    bottom: -41,
                    right: 145,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        color: const Color.fromARGB(255, 168, 12, 0),
                        size: 20,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 247, 174, 174)),
            )
          ],
        ));
    ;
  }
}
