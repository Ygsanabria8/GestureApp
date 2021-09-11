import 'package:flutter/material.dart';
import 'package:gestureapp/widgets/button.widget.dart';

import '../constans.dart';


void ModalCancel(BuildContext context,)  {

  void _onPress(BuildContext context) {
    Navigator.pop(context);
  }

  showModalBottomSheet(
    barrierColor: primary.withOpacity(0.7),
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
          bottom: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 3.0,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'Cancelar',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: MediaQuery.of(context).textScaleFactor * 40,
                    fontWeight: FontWeight.w600,
                    color: secondary
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  '¿Estás seguro de cancelar la traducción?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: MediaQuery.of(context).textScaleFactor * 24,
                      fontWeight: FontWeight.w400,
                      color: secondary
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              ButtonLight(
                buttonName: 'REGRESAR',
                onPressed: _onPress,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                onTap: () => Navigator.popUntil(
                    context, ModalRoute.withName('home')),
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}