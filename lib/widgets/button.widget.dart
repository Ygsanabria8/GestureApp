import 'package:flutter/material.dart';

import '../constans.dart';

class ButtonLight extends StatelessWidget{

  final String buttonName;
  final Function onPressed;

  ButtonLight({required this.buttonName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.08,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primary),
          elevation: MaterialStateProperty.all(5),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          ),
        ),
        onPressed: () => onPressed(context),
        child: Text(
          buttonName,
          style: TextStyle(
            color: secondary,
            fontSize: MediaQuery.of(context).textScaleFactor * 20,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}