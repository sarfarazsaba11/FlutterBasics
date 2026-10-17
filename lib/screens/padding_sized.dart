import 'package:flutter/material.dart';
//lec 34

class PaddingSized extends StatelessWidget {
  const PaddingSized({super.key});


  @override
  Widget build(BuildContext context) {
     return Container(
       color: Colors.white,
       child:Row(
           children:[
             Text(
               "Ahmed",
               style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
             ),
             SizedBox(width:24),
             Text(
               "Ali",
               style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
             ),
             SizedBox(width:24),
             Text(
               "Faisal",
               style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
             ),

           ]
       ),


     );

  }}
