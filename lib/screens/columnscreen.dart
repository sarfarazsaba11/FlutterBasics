// #row //3 column
//use in table
//lec 33

import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Row(
            children:[
              Text(
                "Ahmed",
                style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
              ),
              Text(
                "Ali",
                style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
              ),
              Text(
                "Faisal",
                style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
              ),

            ]
          ),
          Row(
              children:[
                Text(
                  "class1",
                  style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
                ),
                Text(
                  "class2",
                  style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
                ),
                Text(
                  "class3",
                  style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
                ),

              ]
          ),
          Row(
              children:[
                Text(
                  "1",
                  style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
                ),
                Text(
                  "2",
                  style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
                ),
                Text(
                  "3"
                      " ",
                  style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
                ),

              ]
          ),

        ],
      ),
    );
  }
}
