// lec 35

// offline image
// online images
// Materials Icons
// double.maxFinite


import 'package:flutter/material.dart';

class Imageicon  extends StatelessWidget{

  String imagePath = "https://images.pexels.com/photos/4991338/pexels-photo-4991338.jpeg?_gl=1*ke2q64*_ga*MTE4MTM4MTk0Ny4xNzg3NzQ5NzU5*_ga_8JE65Q40S6*czE3ODc4MTI0NDkkbzIkZzAkdDE3ODc4MTI0NDkkajYwJGwwJGgw";

  Imageicon({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      child:Column(
        children:[
          SizedBox(height:60),
          Icon(Icons.eighteen_up_rating,size:50,color:Colors.blue ),
          Image.network(imagePath,
          fit:BoxFit.cover,
          width:300,
          height:200),
          Image.asset("assets/images/headphones.png",
          width:100,
          height:200),
          Image.asset("assets/images/headphones.png",
          width:100,
          height:180)
        ]
      )


    );

  }


}