import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class inputImage extends StatefulWidget {
  const inputImage({super.key});

  @override
  State<inputImage> createState() => _inputImageState();
}

class _inputImageState extends State<inputImage> {
  File? GalleryFile;
  File? camFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: camFile == null ? Column(
          children: [
            TextButton(
              onPressed: (() {
                _getFromGallery();
              }),
              child: Text("pick from Gallery"),
            ),
            TextButton(
              onPressed: (() {
                _getFromCamera();
              }),
              child: Text("pick from Camera"),
            ),
           
          //  Image.file(_imageFile!)
          ],
        ): Container(
              child: Image.file(
                camFile!,
                fit: BoxFit.cover,
              ),
      )
    ));
  }

/// Get from gallery
  _getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        GalleryFile = File(pickedFile.path);
      });
    }
  }
  
  void _getFromCamera() async{
     XFile? pickedFileCam = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if(pickedFileCam!=null)
    {setState(() {
      camFile=File(pickedFileCam.path);
    });}

  }

}