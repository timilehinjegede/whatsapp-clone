import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ImagePicker.pickImage(source: ImageSource.camera);
    return Center(
      child: Container(

      ),
    );
  }
}