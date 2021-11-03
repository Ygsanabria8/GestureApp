import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gestureapp/Pages/translate.page.dart';

import '../constans.dart';
import 'help.page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [Translate(),Help()];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 25,
              spreadRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: tertiary,
          elevation: 10,
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
                color: secondary,
              ),
              title: Text(
                "HOME",
                style: TextStyle(
                  color: secondary,
                  fontSize: MediaQuery.of(context).textScaleFactor * 14,
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.help,
                size: 40,
                color: secondary,
              ),
              title: Text(
                "AYUDA",
                style: TextStyle(
                  color: secondary,
                  fontSize: MediaQuery.of(context).textScaleFactor * 14,
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}