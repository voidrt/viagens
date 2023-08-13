import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/light_theme/colors.dart';

class Texts {
  static const TextStyle bodySmall = TextStyle(
    color: LightThemeColors.textColor,
    fontSize: FontSize.defaultBody,
    fontWeight: FontWeight.w300,
    fontFamily: 'Exo',
  );
  static const TextStyle titleMedium = TextStyle(
    color: LightThemeColors.textColor,
    fontSize: FontSize.big,
    fontWeight: FontWeight.w500,
    fontFamily: 'Exo',
  );
  static const TextStyle titleLarge = TextStyle(
    color: LightThemeColors.textColor,
    fontSize: FontSize.bigger,
    fontWeight: FontWeight.w800,
    fontFamily: 'Exo',
  );
}

class FontSize {
  static const double small = 14;
  static const double defaultBody = 16;
  static const double defaultTitle = 22;
  static const double big = 26;
  static const double bigger = 36;
  static const double biggest = 78;
}
