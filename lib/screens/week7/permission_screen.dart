import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionScreen extends StatefulWidget {
  const PermissionScreen({super.key});

  @override
  State<PermissionScreen> createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Picker"),

        ),
        body: Container(
          child:Column(
            children:[
              ElevatedButton(onPressed:() => micPermission(), child: Text("Get Permission")),
              ElevatedButton(onPressed:() => cameraPermission(), child: Text("Get  Camera Permission")),
               ElevatedButton(onPressed:() => locationPermission(), child: Text("Get  Location Permission"))

            ]

          )
        )

    );
  }
void micPermission()  async {
    PermissionStatus status = await Permission.microphone.status;
    if(status.isGranted){
      print("Granted");
    }else if(status.isDenied){
      print("denied");
    }else if(status.isPermanentlyDenied){
      await openAppSettings();

    }


}

  void locationPermission() async {
    PermissionStatus status = await Permission.camera.status;
    if(status.isGranted){
      print("Granted");
    }else if(status.isDenied){
      print("denied");
    }else if(status.isPermanentlyDenied){
      await openAppSettings();
      print("hello");

    }

  }

  void cameraPermission() async{
    PermissionStatus status = await Permission.location.status;
    if(status.isGranted){
      print("Granted");
    }else if(status.isDenied){
      print("denied");
    }else if(status.isPermanentlyDenied){
      await openAppSettings();

    }

  }
}



