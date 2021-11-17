import 'package:flutter/material.dart';

class color {
  static var purple = 0xFF6C63FF;
  static MaterialColor primary = MaterialColor(
    purple,
    <int, Color>{
      50: Color(purple).withOpacity(.1),
      100: Color(purple).withOpacity(.2),
      200: Color(purple).withOpacity(.3),
      300: Color(purple).withOpacity(.4),
      400: Color(purple).withOpacity(.5),
      500: Color(purple).withOpacity(.6),
      600: Color(purple).withOpacity(.7),
      700: Color(purple).withOpacity(.8),
      800: Color(purple).withOpacity(.9),
      900: Color(purple).withOpacity(1),
    },
  );
}
