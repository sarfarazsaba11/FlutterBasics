import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class MyPopup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyPopupState();
  }
}

class MyPopupState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text("My Dialogs"),),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            ElevatedButton(onPressed: () => showDialog(context),
                child: Text("Show alert dialog")),
            SizedBox(height: 25),


          ],
        ),
      ),
    );
  }

  void showDialog(BuildContext context) {
    AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.rightSlide,
        title: 'Dialog Title',
        desc: 'Dialog description here.............',
        btnCancelOnPress: ()
    {},
    btnOkOnPress: () {},
    )
    ..
    show
    (
    );

  }


}



