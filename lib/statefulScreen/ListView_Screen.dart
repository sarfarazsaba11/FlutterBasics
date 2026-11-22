import 'package:flutter/material.dart';
import 'package:myfirst_project/statefulScreen/product_detail.dart';
import 'package:myfirst_project/widget/product_row.dart';

import '../data/product_data.dart';
import '../models/Product.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListPageState();
  }
}

class ListPageState extends State {
List<Color> colors = [Colors.red, Colors.blue, Colors.green,Colors.red, Colors.blue, Colors.green,Colors.red, Colors.blue, Colors.green,Colors.red];
List<Product> data =[];

@override
void initState(){
  super.initState();
  data = ProductsData().getAllProducts();
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(backgroundColor: Colors.blue,
        title: Text("Product Page")),
    body: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: ListView.builder(
          itemCount:data.length,
          itemBuilder: (context, index) {
            // return Container(
            //   color:colors[index],
            //   alignment:Alignment.center,
            //   margin:EdgeInsets.all(15),
            //   height: 122,
            //   width: double.maxFinite,
            //   child:Text("Product Name =${data[index].name}",
            //   style:TextStyle(fontSize: 22, color:Colors.white))
            // );
            Product p = data[index];
            return InkWell(child:ProductRow(p),onTap: ()=> Navigator.push(context, MaterialPageRoute(builder:(context)=> ProductDetail(p))),);
          }
      ),
    ),
  );
}
}