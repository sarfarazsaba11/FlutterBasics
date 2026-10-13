import 'package:flutter/material.dart';

//lec 31

// conatiner 2d box
// size , height, outre spacing inner spacing, border

class Contain extends StatelessWidget {
  const Contain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      color: Colors.green.shade400,
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Colors.white, width: 2),
        ),
        alignment: Alignment.center,
        height: 200,
        width: 200,
        child: Text(
          "This is my Text Widget",
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w100,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
