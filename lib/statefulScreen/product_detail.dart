import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/Product.dart';

class ProductDetail extends StatefulWidget {
  Product p;

  ProductDetail(this.p);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Product Detail Page"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Colors.white, width: 2),
          gradient: LinearGradient(
            colors: [Colors.white, Colors.red, Colors.white],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        alignment: Alignment.center,

        width: double.maxFinite,
        child:Column(
        children:[
          Spacer(),

          Icon(widget.p.icon, size:88, color:Colors.white),
          SizedBox(height:25),
          Text(widget.p.name,style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 24,
          ),),
          SizedBox(height:25),
          Text(widget.p.price.toString(),style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 24,
          ),),



          Spacer()

        ]
      ),
      )
    );
  }
}
