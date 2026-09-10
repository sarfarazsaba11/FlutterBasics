

import 'package:flutter/material.dart';

import '../models/Product.dart';

class ProductsData {
  List<Product> getAllProducts(){
    List<Product> myData  = [];
    Product p1  = Product(Icons.padding_rounded, " Mouse", 10000);
    myData.add(p1);
    Product p2  = Product(Icons.settings, " Setting", 700);
    myData.add(p2);
    Product p3  = Product(Icons.local_activity, "Activity", 300);
    myData.add(p3);
    Product p4 = Product(Icons.send, " Send", 500);
    myData.add(p4);
    return myData;
  }
}
