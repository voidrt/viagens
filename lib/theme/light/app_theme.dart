import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/light/colors.dart';
import 'package:turismo_mobile/theme/light/text.dart';

class LightTheme {
  static ThemeData lightThemeSettings = ThemeData(
    useMaterial3: true,
    //? TEXT THEME
    fontFamily: 'Montserrat',
    textTheme: const TextTheme().copyWith(
      bodySmall: Texts.bodySmall,
      displayMedium: Texts.titleMedium,
    ),
    //? COLORS
    unselectedWidgetColor: Colors.white.withOpacity(0.67),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.black,
      secondary: AppColors.black,
      onSecondary: AppColors.background,
      error: AppColors.errorRed,
      onError: AppColors.black,
      background: AppColors.background,
      onBackground: AppColors.black,
      surface: AppColors.background,
      onSurface: AppColors.black,
    ),
  );
}
