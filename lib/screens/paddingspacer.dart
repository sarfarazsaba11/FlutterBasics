// lec
import 'package:flutter/material.dart';

class Paddingspacer extends StatelessWidget {
  const Paddingspacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Ahmed",
              style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
            ),
            Spacer(),
            Text(
              "Ali",
              style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
            ),
            Text(
              "Faisal",
              style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
            ),
          ],
        ),
      ),
    );
  }
}
