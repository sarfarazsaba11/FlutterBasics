// lec 37

import 'package:flutter/material.dart';

class ScafoldScreen extends StatelessWidget {
  const ScafoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      drawer: Container(),
      //flaotingActionButton

      body: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        color: Colors.grey,
        child: Text("Home Screen"),
      ),
    );
  }
}
