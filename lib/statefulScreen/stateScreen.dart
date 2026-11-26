import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingScreenState();
  }
}

class SettingScreenState extends State {
  String name = "Ali";
  bool changeName = true;
  bool wifi= true;
  Color wifiColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            ElevatedButton(onPressed: () => change(), child: Text("Update")),
            SizedBox(height: 25),
            Text(name, style: TextStyle(color: Colors.red, fontSize: 20)),
            InkWell(child:Icon(Icons.wifi, size: 55, color:wifiColor),onTap:()=>wifiState()),

          ],
        ),
      ),
    );
  }

  void change() {
    setState(() {
      if (changeName) {
        name = "Saba";
        changeName= false;
      } else {
        name = "Ali";
        changeName = true;
      }
    });
  }

  void wifiState(){
    setState((){
      if(wifi){
        wifiColor = Colors.blue;
        wifi= !wifi;
      }else {
        wifiColor = Colors.grey;
        wifi = !wifi;
      }
    });
  }


}
