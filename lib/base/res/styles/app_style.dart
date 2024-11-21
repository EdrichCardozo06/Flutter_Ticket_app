import 'package:flutter/material.dart';

//use the above import only ...cuz if u use the dart.UI it will give you an error in the home_screen.dart
Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlue = const Color(0xFF7394E1);
  static Color ticketOrange = const Color(0xFFEF7040);
  static Color kakiColour = const Color(0xFFFFAE00);
  static Color ticketTableColor = const Color(0xFFF4F6FD);
  static Color planeColor = const Color(0xFFBFC2DF);
  static Color blueColor = const Color(0xD91130CE);
  static Color greenColor = const Color(0xFF3AB8B8);
  static Color ticketWhite = const Color(0xFFFFFFFF);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor,
  );
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade500,
  );
}
