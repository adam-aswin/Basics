import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Synnefo",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green[900],
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  color: Colors.white,
                ))
          ],
          // leading: IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.menu,
          //       color: Colors.white,
          //     )),
        ),
        // floatingActionButton: TextButton(
        //   onPressed: () {},
        //   child: Icon(
        //     Icons.add,
        //     color: Colors.white,
        //   ),
        //   style: TextButton.styleFrom(
        //     shape: CircleBorder(),
        //     padding: EdgeInsets.all(20),
        //     backgroundColor: Colors.green[900],
        //     elevation: 5,
        //     shadowColor: Colors.black,
        //   ),
        // ),

        //====================================================
        //Drawer
        //=======
        drawer: Drawer(
          // backgroundColor: Colors.grey[900],
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(
                  "MENU",
                  // style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Verified account"),
                leading: Icon(Icons.verified_user_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("tapped");
                },
                onLongPress: () {
                  print("Long pressed");
                },
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Verified account"),
                leading: Icon(Icons.verified_user_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("tapped");
                },
                onLongPress: () {
                  print("Long pressed");
                },
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Verified account"),
                leading: Icon(Icons.verified_user_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("tapped");
                },
                onLongPress: () {
                  print("Long pressed");
                },
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Verified account"),
                leading: Icon(Icons.verified_user_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("tapped");
                },
                onLongPress: () {
                  print("Long pressed");
                },
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Verified account"),
                leading: Icon(Icons.verified_user_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("tapped");
                },
                onLongPress: () {
                  print("Long pressed");
                },
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Verified account"),
                leading: Icon(Icons.verified_user_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("tapped");
                },
                onLongPress: () {
                  print("Long pressed");
                },
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Verified account"),
                leading: Icon(Icons.verified_user_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("tapped");
                },
                onLongPress: () {
                  print("Long pressed");
                },
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Verified account"),
                leading: Icon(Icons.verified_user_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("tapped");
                },
                onLongPress: () {
                  print("Long pressed");
                },
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Verified account"),
                leading: Icon(Icons.verified_user_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("tapped");
                },
                onLongPress: () {
                  print("Long pressed");
                },
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Verified account"),
                leading: Icon(Icons.verified_user_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("tapped");
                },
                onLongPress: () {
                  print("Long pressed");
                },
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Verified account"),
                leading: Icon(Icons.verified_user_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("tapped");
                },
                onLongPress: () {
                  print("Long pressed");
                },
              ),
              ListTile(
                title: Text("Account"),
                subtitle: Text("Verified account"),
                leading: Icon(Icons.verified_user_outlined),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print("tapped");
                },
                onLongPress: () {
                  print("Long pressed");
                },
              )
            ],
          ),
        ),
        //====================================================
        //navigation bar
        //===============
        // bottomNavigationBar: BottomNavigationBar(items: [
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.menu), label: "Menu", tooltip: "Menu"),
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.home), label: "Home", tooltip: "Home"),
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.settings),
        //       label: "Settings",
        //       tooltip: "Settings"),
        // ]),
        //======================================================
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            color: Colors.deepPurple,
            animationDuration: Duration(milliseconds: 700),
            animationCurve: Easing.legacy,
            items: [
              Icon(Icons.menu),
              Icon(Icons.home),
              Icon(Icons.settings),
            ]),
      ),
    );
  }
}
