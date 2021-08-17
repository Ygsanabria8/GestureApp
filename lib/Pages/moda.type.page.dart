import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestureapp/widgets/button.circle.widget.dart';

import '../constans.dart';

void ModalType(BuildContext context) {

  void _camera(BuildContext context) {
    print("Camara");
    Navigator.pop(context);
  }

  void _galery(BuildContext context) {
    print("Galeria");
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
                'Traducir',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: MediaQuery.of(context).textScaleFactor * 40,
                    fontWeight: FontWeight.w600,
                    color: secondary),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  '¿Por que medio deseas subir tu imagen a traducir?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: MediaQuery.of(context).textScaleFactor * 24,
                      fontWeight: FontWeight.w400,
                      color: secondary),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonCircle(
                    onPressed: _camera,
                    buttonName: "CAMARA",
                    isCamera: true,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  ButtonCircle(
                    onPressed: _galery,
                    buttonName: "GALERIA",
                    isCamera: false,
                  )
                ],
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
