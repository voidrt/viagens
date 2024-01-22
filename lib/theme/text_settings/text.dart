import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/light_theme/colors.dart';

class Texts {
  static TextStyle bodySmall = const TextStyle(
    fontSize: FontSize.defaultBody,
    fontWeight: FontWeight.w300,
    color: LightThemeColors.textColor,
    fontFamily: 'Exo',
  );
  static const TextStyle titleMedium = TextStyle(
    color: LightThemeColors.textColor,
    fontFamily: 'Exo',
    fontSize: FontSize.defaultTitle,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle titleLarge = TextStyle(
    color: LightThemeColors.textColor,
    fontSize: FontSize.big,
    fontWeight: FontWeight.w800,
    fontFamily: 'Exo',
  );
  static const TextStyle headlineMedium = TextStyle(
    color: LightThemeColors.textColor,
    fontWeight: FontWeight.w400,
    fontFamily: 'Exo',
    fontSize: FontSize.big - 6,
  );
  static const TextStyle headlineLarge = TextStyle(
    color: LightThemeColors.textColor,
    fontWeight: FontWeight.w800,
    fontFamily: 'Exo',
    fontSize: FontSize.biggest,
  );
}

class FontSize {
  static const double small = 12;
  static const double defaultBody = 14;
  static const double defaultTitle = 20;
  static const double big = 24;
  static const double bigger = 34;
  static const double biggest = 60;
}
