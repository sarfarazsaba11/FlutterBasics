//lec 32
//ctrl+mouse left click

// horizontal alignment
import 'package:flutter/cupertino.dart';

class RowScreen extends StatelessWidget{
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {

   return Container(
     child:Row(
       mainAxisAlignment:MainAxisAlignment.end,
       crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisSize: MainAxisSize.max,
       children:[

         Text("1", style:TextStyle(fontSize:18)),
         Text("2", style:TextStyle(fontSize:18)),
         Text("3", style:TextStyle(fontSize:18)),
         Text("4", style:TextStyle(fontSize:18)),

       ]

     )
   );
  }}