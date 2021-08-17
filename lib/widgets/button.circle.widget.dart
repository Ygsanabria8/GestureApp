import 'package:flutter/material.dart';

import '../constans.dart';

class ButtonCircle extends StatelessWidget{

  final String buttonName;
  final Function onPressed;
  final bool isCamera;

  ButtonCircle({required this.buttonName, required this.onPressed, required this.isCamera});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.28,
      height: MediaQuery.of(context).size.height * 0.13,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primary),
          elevation: MaterialStateProperty.all(5),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100))),
        ),
        onPressed: () => onPressed(context),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                isCamera ? Icons.camera_enhance : Icons.insert_photo,
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
    );
  }
}
