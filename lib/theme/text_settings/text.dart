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
    fontSize: FontSize.big,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle titleLarge = TextStyle(
    color: LightThemeColors.textColor,
    fontSize: FontSize.bigger,
    fontWeight: FontWeight.w800,
    fontFamily: 'Exo',
  );
  static const TextStyle headlineLarge = TextStyle(
    color: LightThemeColors.textColor,
    fontWeight: FontWeight.w800,
    fontFamily: 'Exo',
    fontSize: FontSize.biggest,
  );
}

class FontSize {
  static const double small = 14;
  static const double defaultBody = 16;
  static const double defaultTitle = 22;
  static const double big = 26;
  static const double bigger = 36;
  static const double biggest = 70;
}
