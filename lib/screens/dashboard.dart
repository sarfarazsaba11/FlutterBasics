import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget{
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Text("This is my Home Screen",
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
      style:TextStyle(
        fontWeight: FontWeight.w900,
        color:Colors.white,
        fontSize: 24,

      ),


    );
  }
  
}