import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:myfirst_project/onepage/alarm_screen.dart';
import 'package:myfirst_project/onepage/home.dart';
import 'package:myfirst_project/onepage/setting_screen.dart';

class ParentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ParentScreenState();
  }
}

class ParentScreenState extends State {
  List<Widget> screens = [HomeScreen(), SettingScreen(), AlarmScreen()];
  int selectedItem = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        title: Text("My Dialogs"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => changeTab(index),
        currentIndex: 0,
        backgroundColor: Colors.purple.shade300,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "alarm"),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "setting"),
        ],
      ),
      body: screens[selectedItem],
    );
  }


  void changeTab(int index) {
    setState(() {
      selectedItem = index;
    });
  }
}