import 'package:flutter/material.dart';
import 'package:gestureapp/constans.dart';
import 'package:gestureapp/widgets/appbar.widget.dart';
import 'package:gestureapp/widgets/button.widget.dart';



class Translate extends StatelessWidget {

  void _onPress(BuildContext context) {
    Navigator.pushNamed(context, 'translate');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tertiary,
      appBar: AppBarCustom(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image(
                image: AssetImage('assets/images/logo.png'),
                width: MediaQuery.of(context).size.width * 0.7,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                child: Text(
                  'Bienvenido',
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: MediaQuery.of(context).textScaleFactor * 45,
                    color: secondary,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ButtonLight(
                buttonName: 'REALIZAR TRADUCCIÓN',
                onPressed: _onPress,
              ),
            ],
          ),
        ),
      ),
    );
  }
}