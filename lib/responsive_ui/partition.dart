import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//lec 42

class Partition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.4,
            width: double.maxFinite,
            color: Colors.blue,
            child: Row(
              children: [
                Container(
                  height: double.maxFinite,
                  width: screenWidth / 3,
                  color: Colors.grey,
                ),
                Container(
                  height: double.maxFinite,
                  width: screenWidth / 3,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight * .2,
            width: double.maxFinite,
            color: Colors.orange,
          ),
          Container(
            height: screenHeight * 0.3,
            width: double.maxFinite,
            color: Colors.pink,
          ),
          Container(
            height: screenHeight * 0.1,
            width: double.maxFinite,
            color: Colors.brown,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.purple)),
                Expanded(child: Container(color: Colors.green)),
                Expanded(child: Container(color: Colors.purple)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
