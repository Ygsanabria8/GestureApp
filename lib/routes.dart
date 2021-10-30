import 'package:flutter/material.dart';
import 'package:gestureapp/Pages/camera.page.dart';

import 'Pages/home.page.dart';
import 'Pages/splash.screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'home': (BuildContext context) => Home(),
  'translate': (BuildContext context) => Camera(),
  'splashScreen': (BuildContext context) => SplashScreen(),
};