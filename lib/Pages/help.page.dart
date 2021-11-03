import 'package:flutter/material.dart';
import 'package:gestureapp/constans.dart';
import 'package:gestureapp/widgets/appbar.widget.dart';
import 'package:carousel_slider/carousel_slider.dart';



class Help extends StatelessWidget {

  final List<String> imageList = [
    "assets/images/onboarding_1.png",
    "assets/images/onboarding_2.png",
    "assets/images/onboarding_3.png",
    "assets/images/onboarding_4.png",
    "assets/images/onboarding_5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tertiary,
      appBar: AppBarCustom(),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.7,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
          items: imageList.map((e) => ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.asset(e,
                  fit: BoxFit.scaleDown,)
              ],
            ) ,
          )).toList(),
        ),
      )
    );
  }
}