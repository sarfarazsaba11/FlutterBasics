import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "This is my Home Screen",
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.white,
          fontSize: 24,
        ),
      ),
    );
  }
}
