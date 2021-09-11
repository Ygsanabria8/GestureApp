import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestureapp/provider/user.provider.dart';
import 'package:gestureapp/widgets/appbar.widget.dart';
import 'package:image_picker/image_picker.dart';


import '../constans.dart';

class ResponseImage extends StatelessWidget {

  XFile? image = null;
  String word = "";

  ResponseImage({required this.image, required this.word});

  @override
  Widget build(BuildContext context) {
    final userProvider = new UserProvider();
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
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Image.file(File(image!.path))),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.08,
                      alignment: Alignment.center,
                      child: Text(
                        word,
                        style: TextStyle(
                          color: secondary,
                          fontSize:
                          MediaQuery.of(context).textScaleFactor *
                              26,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(primary),
                          elevation: MaterialStateProperty.all(5),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(10))),
                        ),
                        onPressed: () {
                          Navigator.popUntil(
                              context, ModalRoute.withName('home'));
                        },
                        child: Text(
                          'VOLVER AL INICIO',
                          style: TextStyle(
                            color: secondary,
                            fontSize:
                            MediaQuery.of(context).textScaleFactor *
                                20,
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
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
