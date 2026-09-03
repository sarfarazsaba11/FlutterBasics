// lect 30
// Text most use Widget
//bold. italic. color, size
// Center widget will have a child

import 'package:flutter/material.dart';

class TextAndCenter extends StatelessWidget {
  const TextAndCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
