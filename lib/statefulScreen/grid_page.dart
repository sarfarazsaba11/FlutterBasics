import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridPage extends StatefulWidget {


  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue,
            title: Text("Product Page")),
        body: GridView.builder(
          itemCount:25,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:5,
              mainAxisSpacing: 3,

            ),
            itemBuilder: (context, index){
              return Container(
                alignment:Alignment.center,
                margin:EdgeInsets.all(12),
                height:90,
                width:90,
                color:Colors.red.shade300,
                child:Text("$index",style:TextStyle(fontSize:18,color:Colors.white, fontWeight: FontWeight.bold))
              );
            })
    );
  }
  }



