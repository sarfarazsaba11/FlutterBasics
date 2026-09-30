import 'package:flutter/material.dart';

//lec 38


class AppbarScreen  extends StatelessWidget {
  const AppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(

      appBar: AppBar(
          title:Text("My App"),
          titleTextStyle:TextStyle(color:Colors.white,fontSize: 24,),
          centerTitle: true,
          leading:Icon(Icons.settings, color:Colors.white70),
          actions:[
            // Icon(Icons.home, color:Colors.white),
            // Icon(Icons.alarm, color:Colors.white),
            IconButton(onPressed:()=> print("Home"), icon: Icon(Icons.home, color:Colors.white)),
            IconButton(onPressed:()=> print("Alarm"), icon: Icon(Icons.alarm, color:Colors.white))

          ],

          backgroundColor: Colors.blue),
      drawer: Container(),
      //flaotingActionButton

      body: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        color: Colors.white24,
        child: Text("Home Screen"),
      ),

    );
  }
}