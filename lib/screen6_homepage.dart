import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class screen6_homepage extends StatefulWidget {
  @override
  _screen6_homepageState createState() => _screen6_homepageState();
}

class _screen6_homepageState extends State<screen6_homepage> {
  var picker = ImagePicker();

  Future getImage(ImageSource source_) async {
    final pickedFile = await picker.getImage(source: source_);

    if (pickedFile != null) {
      File croppedfile = await ImageCropper.cropImage(
        sourcePath: pickedFile.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Crop Image',
            toolbarColor: Colors.blueAccent,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
      );
      setState(() {
        // _image = croppedfile;
      });
    } else {
      print('No image selected.');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getImage(ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
