import 'package:flutter/material.dart';

// lec 36


class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
              children: [
              SizedBox(height: 100),
          ElevatedButton(
            onPressed: () => myFunction(),
            child: Text(
              "Click Me",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.purple.shade900,
                fontSize: 24,
              ),
            ),
          ),
                SizedBox(height:20),
          ElevatedButton(
              onPressed: () => myClick(),
              child: Icon(Icons.ads_click)
          ),
          SizedBox(height:20),
          InkWell(
              child:Center(
                child:

                  Container(
                      height:80,
                      width:150,
                      decoration:BoxDecoration(
                          color:Colors.amberAccent.shade700,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child:Center(
                        child:
                        Text("click ME",
                            style:TextStyle(fontWeight:FontWeight.bold,color:Colors.blueAccent,fontSize:24)),
                      )

                  ),



              ),


              onTap:()=> tap(),
              onDoubleTap: () => myDoubleTap(),
            onLongPress: () => myLongPress(),
      )
      ],
    ),
    )
    );


  }

  //BackEnd code start from here
  void myFunction() {
    print("button click");
  }
  void myClick() {
    print("button click click");
  }

  void tap() {
    print("button tap click");
  }
}
void myDoubleTap() {
  print("button Press click");
}
void myLongPress() {
  print("button long click");
}
