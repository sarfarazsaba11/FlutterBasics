// import 'package:flutter/material.dart';
// import 'package:myfirst_project/assign/assign_2/login_screen.dart';
// import 'package:myfirst_project/responsive_ui/partition.dart';
// import 'package:myfirst_project/assign/profilescreen.dart';
// import 'package:myfirst_project/responsive_ui/product_page.dart';
// import 'package:myfirst_project/screens/bottom_navigation_bar_screen.dart';
// import 'package:myfirst_project/screens/drawer.dart';
// import 'package:myfirst_project/screens/form_validation.dart';
// import 'package:myfirst_project/screens/week7/gallery.dart';
// import 'package:myfirst_project/screens/week7/json_screen.dart';
// import 'package:myfirst_project/screens/week7/permission_screen.dart';
// import 'package:myfirst_project/statefulScreen/ListView_Screen.dart';
// import 'package:myfirst_project/statefulScreen/grid_page.dart';
// import 'package:myfirst_project/statefulScreen/input_screen.dart';
// import 'package:myfirst_project/statefulScreen/lec48/first_screen.dart';
// import 'package:myfirst_project/statefulScreen/my_pop.dart';
// import 'package:myfirst_project/statefulScreen/stateScreen.dart';
// import 'onepage/parenttSceen.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home:JsonScreen(),
//       theme: ThemeData(),
//     )
//   );
// }



import 'package:flutter/material.dart';

import 'product_screen.dart';

void main() {
  runApp(const ProductApp());
}

class ProductApp extends StatelessWidget {
  const ProductApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF4F7F6),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
      home: const ProductScreen(),
    );
  }
}
