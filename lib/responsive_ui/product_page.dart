import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue.shade100,
        title:Text("My Products"),
        centerTitle: true,
      ),
      body:Container(
        color: Colors.blue.shade50,
        child: Column(
          children: [
            Container(
              height: 35,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.arrow_back_ios, color: Colors.blue),
                  Spacer(),
                  Icon(Icons.upload, color: Colors.blue),
                  SizedBox(width: 20),
                  Icon(Icons.heart_broken, color: Colors.blue),
                  SizedBox(width: 20),
                ],
              ),
            ),
            Image.asset(
              "assets/images/headphones.png",
              fit: BoxFit.contain,
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "667.79",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Headphones",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Color Code",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height:20),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    Text(
                      "Headphones are a type of hardware output device that can be connected to a computer's line-out or speakers port, as well as wirelessly using Bluetooth. ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children:[
                        Container(
                          color:Colors.blue,
                            alignment: Alignment.center,
                          width:MediaQuery.of(context).size.width*0.7,
                          height:50,
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Icon(Icons.shopping_cart),
                              SizedBox(width:10),
                              Text("Buy Now",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,))
                            ]
                          )
                        ),
                        Container(
                          color:Colors.blueAccent,
                          alignment: Alignment.center,
                          child:Icon(Icons.settings),
                          width:MediaQuery.of(context).size.width*0.18,
                          height:50,
                        ),

                      ]
                    )



                  ],


                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
