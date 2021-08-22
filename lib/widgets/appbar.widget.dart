import 'package:flutter/material.dart';

import '../constans.dart';

class AppBarCustom extends StatelessWidget implements PreferredSize{

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: tertiary,
      elevation: 0,
      title: Container(

        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //GestureDetector(
            //  child: Icon(
            //    Icons.menu,
            //    size: 40,
            //    color: secondary,
            //  ),
            //  onTap: () => {
            //    print("Funciono!")
            //  },
            //),
            //SizedBox(
            //  width: MediaQuery.of(context).size.width * 0.05,
            //),
            Text(
              'GestureApp',
              style: TextStyle(
                fontFamily: fontFamily,
                fontSize: MediaQuery.of(context).textScaleFactor * 45,
                color: secondary,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        )
      ),
    );
  }
}