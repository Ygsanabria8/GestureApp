import 'package:flutter/material.dart';
import '';
import '../constans.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        Duration(seconds: 2),
            () => Navigator.pushNamed(context, 'home')
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: tertiary,
          child: Column(
            children: [
              Spacer(),
              Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.6,
                    child: Image(
                      image: AssetImage ('assets/images/logo.png'),
                    ),
                  )
              ),
              Spacer(),
              CircularProgressIndicator(
                valueColor:AlwaysStoppedAnimation<Color>(secondary),
              ),
              Spacer(),
              Text(
                'Bienvenido',
                style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: MediaQuery.of(context).textScaleFactor * 45,
                  color: secondary,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              )
            ],
          ),
        )
    );
  }
}