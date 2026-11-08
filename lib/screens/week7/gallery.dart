import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class MediaScreen extends StatefulWidget {


  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  ImagePicker selectImage = ImagePicker();
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Picker"),

        ),
        body: Container(
            child: Column(
                children:[
                ElevatedButton(onPressed: ()=> getImageFromGallery(),
        child: Text("Image from gallery ")),
    ElevatedButton(onPressed: ()=> getImageFromCamera(),
    child: Text("Image from gallery "),
    ),

    selectedImage == null ? Text("Getting Image"):Image.file(selectedImage!)
    ,
    ]
    )
    )
    );


  }

  void getImageFromGallery() async {
    final XFile? getImage = (await selectImage.pickImage(
        imageQuality: 80,
        source: ImageSource.gallery));

    setState(() {
      if (getImage != null) {
        selectedImage = File(getImage.path);
      }
    });
  }


  void getImageFromCamera() async {
    PermissionStatus status = await Permission.camera.status;
    if(status.isGranted){
      final XFile? getImage = (await selectImage.pickImage(
          imageQuality: 80,
          source: ImageSource.camera));

      setState(() {
        if (getImage != null) {
          selectedImage = File(getImage.path);
        }
      });
      print("Granted");
    }else if(status.isDenied){
      print("denied");
    }else if(status.isPermanentlyDenied){
      await openAppSettings();
      print("hello");

    }


  }
}

