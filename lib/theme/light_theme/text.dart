import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/light_theme/colors.dart';

class Texts {
  static const TextStyle bodySmall = TextStyle(
    color: AppColors.textColor,
    fontSize: FontSize.defaultBody,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle titleMedium = TextStyle(
    color: AppColors.textColor,
    fontSize: FontSize.big,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle titleLarge = TextStyle(
    color: AppColors.textColor,
    fontSize: FontSize.bigger,
    fontWeight: FontWeight.w900,
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
