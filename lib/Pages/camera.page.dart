import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestureapp/widgets/appbar.widget.dart';
import 'package:gestureapp/widgets/button.widget.dart';
import 'package:image_picker/image_picker.dart';

import '../constans.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {

  late XFile? _image = null;
  var picker = ImagePicker();

  void translate(BuildContext context) {
    Navigator.pop(context);
  }

  Future getImageCamera() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera,);

    setState(() {
      _image = image;
    });
  }

  Future getImageGallery() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: tertiary,
      appBar: AppBarCustom(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size .height * 0.6,
                child: _image == null ? Container() : Image.file(File(_image!.path))
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              _image == null
              ? Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.08,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(primary),
                            elevation: MaterialStateProperty.all(5),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          onPressed: getImageCamera,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.camera_enhance,
                                  size: 40,
                                  color: secondary,
                                ),
                                Text(
                                  "CAMARA",
                                  style: TextStyle(
                                    color: secondary,
                                    fontSize:
                                    MediaQuery.of(context).textScaleFactor * 16,
                                    fontFamily: fontFamily,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.08,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(primary),
                            elevation: MaterialStateProperty.all(5),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          onPressed: getImageGallery,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.insert_photo,
                                  size: 40,
                                  color: secondary,
                                ),
                                Text(
                                  "GALERIA",
                                  style: TextStyle(
                                    color: secondary,
                                    fontSize:
                                    MediaQuery.of(context).textScaleFactor * 16,
                                    fontFamily: fontFamily,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
              : Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    ButtonLight(
                        buttonName: 'TRADUCIR', 
                        onPressed: translate,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    GestureDetector(
                      onTap: () => {
                        setState(() {
                        _image = null;
                        })
                      },
                      child: Text(
                        'CAMBIAR IMAGEN',
                        style: TextStyle(
                          color: secondary,
                          fontSize: MediaQuery.of(context).textScaleFactor * 18,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    GestureDetector(
                      onTap: () => {
                      Navigator.popUntil(context,ModalRoute.withName('home'))
                      },
                      child: Text(
                        'CANCELAR TRADUCCIÓN',
                        style: TextStyle(
                          color: secondary,
                          fontSize: MediaQuery.of(context).textScaleFactor * 18,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}