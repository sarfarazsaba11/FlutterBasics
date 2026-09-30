import 'package:flutter/material.dart';

class BottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Container(
        width: 320,
        height: double.maxFinite,
        color: Colors.grey.shade200,
        margin: EdgeInsets.only(top: 24),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Icon(
                Icons.person,
                color: Colors.white,
                size: 24,
              ),
              decoration: BoxDecoration(color: Colors.blue.shade200),
              accountName: Text("Test"),
              accountEmail: Text("Test@gmail.com"),
            ),
            ListTile(leading: Icon(Icons.send), title: Text("Sent")),
            Container(
              width: double.maxFinite,
              height: 1,
              color: Colors.blue.shade200,
            ),
            ListTile(leading: Icon(Icons.outbox), title: Text("Outbox")),
            Container(
              width: double.maxFinite,
              height: 1,
              color: Colors.blue.shade200,
            ),
            ListTile(leading: Icon(Icons.drafts), title: Text("Outbox")),
            Container(
              width: double.maxFinite,
              height: 1,
              color: Colors.blue.shade200,
            ),
          ],
        ),
      ),

      appBar: AppBar(
        title: Text("My App"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        centerTitle: true,
        // leading:Icon(Icons.settings, color:Colors.white70),
        actions: [
          // Icon(Icons.home, color:Colors.white),
          // Icon(Icons.alarm, color:Colors.white),
          IconButton(
            onPressed: () => print("Home"),
            icon: Icon(Icons.home, color: Colors.white),
          ),
          IconButton(
            onPressed: () => print("Alarm"),
            icon: Icon(Icons.alarm, color: Colors.white),
          ),
        ],

        backgroundColor: Colors.blue,
      ),

      body: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        color: Colors.white24,
        child: Text("Home Screen it"),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.grey.shade50,
      //   backgroundColor: Colors.blue,
      //
      //   items: [
      //     BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
      //     BottomNavigationBarItem(
      //       label: "Settings",
      //       icon: Icon(Icons.settings),
      //     ),
      //     BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
      //     BottomNavigationBarItem(label: "Alarm", icon: Icon(Icons.alarm)),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade50,
        backgroundColor: Colors.blue,

        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "Alarm", icon: Icon(Icons.alarm)),
        ],
      ),
    );
  }
}
