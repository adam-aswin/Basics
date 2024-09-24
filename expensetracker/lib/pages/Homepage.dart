import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: const Color.fromARGB(255, 44, 44, 44),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "EXPENSE TRACKER",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green[800]),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                ),
                onPressed: () {},
                child: Text(
                  "Add Income",
                  style: TextStyle(
                    color: Colors.green[800],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                ),
                onPressed: () {},
                child: Text(
                  "Statement",
                  style: TextStyle(
                    color: Colors.green[800],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 44, 44, 44),
        leading: IconButton(
          onPressed: () => scaffoldkey.currentState?.openDrawer(),
          icon: Container(
            height: 28,
            width: 28,
            child: Image.asset(
              "./lib/icons/multiply-sign.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      // body: ,
    );
  }
}
