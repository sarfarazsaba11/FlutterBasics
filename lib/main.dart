import 'package:flutter/material.dart';
import 'package:myfirst_project/responsive_ui/partition.dart';
import 'package:myfirst_project/assign/profilescreen.dart';
import 'package:myfirst_project/responsive_ui/product_page.dart';
import 'package:myfirst_project/screens/bottom_navigation_bar_screen.dart';
import 'package:myfirst_project/screens/drawer.dart';

void main() {
  runApp(
    MaterialApp(
      home:ProductPage(),
      theme: ThemeData(),
    )
  );
}

