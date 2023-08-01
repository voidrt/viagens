import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/light/colors.dart';

class Texts {
  static const TextStyle bodySmall = TextStyle(
    color: AppColors.textColor,
    fontSize: FontSize.p,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle titleMedium = TextStyle(
    color: AppColors.textColor,
    fontSize: FontSize.g,
    fontWeight: FontWeight.w700,
  );
}

class FontSize {
  static const double p = 12;
  static const double defaultBody = 16;
  static const double defaultTitle = 22;
  static const double g = 26;
  static const double gg = 36;
  static const double exg = 78;
}
