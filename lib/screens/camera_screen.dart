import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class ImagePickerApp extends StatefulWidget {
  const ImagePickerApp({Key? key}) : super(key: key);

  @override
  _imagePickerAppState createState() => _imagePickerAppState();
}

class _imagePickerAppState extends State<ImagePickerApp> {
  File? _image;

  Future getImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      //final imageTemporary = File(image.path);
      final imagePermanent = await saveFilePermanently(image.path);

      setState(() {
        this._image = imagePermanent;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<File> saveFilePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Upload your retina'),
      ),*/
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            _image!=null ? Image.file(_image!, width: 250, height: 250, fit: BoxFit.cover,) : Image.asset("images/eyes.jpg"),
            SizedBox(height: 40,),
          SizedBox(height: 130),
          Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () => getImage(ImageSource.gallery),

                      child: Padding(
                          padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                          child: Center(
                            child: Text(
                              "Pick from Gallery",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                      ),

                    )
                ),
              ),
          ),
              SizedBox(height: 0,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                      color: Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () => getImage(ImageSource.camera),

                        child: Padding(
                            padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                            child: Center(
                              child: Text(
                                "Pick from Camera",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                        ),

                      )
                  ),
                ),
            /*CustomButton(
                title: 'Pick from Gallery',
            icon: Icons.image_outlined,
            onClick: () => getImage(ImageSource.gallery),
            ),
            CustomButton(
                title: 'Pick from Camera',
                icon: Icons.camera,
                onClick: () => getImage(ImageSource.camera),
            ),
          */
          )]
        )
      )
    );
  }
}Widget CustomButton({
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}) {
  return Container(
    width: 280,
    child: ElevatedButton(
      onPressed: onClick,
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 10),
          Text(title)
        ]
      )
    )
  );
}