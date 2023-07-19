import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(76, 175, 80, .1),
  100: const Color.fromRGBO(76, 175, 80, .2),
  200: const Color.fromRGBO(76, 175, 80, .3),
  300: const Color.fromRGBO(76, 175, 80, .4),
  400: const Color.fromRGBO(76, 175, 80, .5),
  500: const Color.fromRGBO(76, 175, 80, .6),
  600: const Color.fromRGBO(76, 175, 80, .7),
  700: const Color.fromRGBO(76, 175, 80, .8), 
  800: const Color.fromRGBO(76, 175, 80, .9),
  900: const Color.fromRGBO(76, 175, 80, 1),
};

abstract class CustomColors {
  static Color customContrastColor = Colors.red.shade800;
  static MaterialColor customSwatchColor =
      MaterialColor(0xCC4CAF50, _swatchOpacity);
}
