import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/light_theme/colors.dart';
import 'package:turismo_mobile/theme/text_settings/text.dart';

class LightTheme {
  static ThemeData lightThemeSettings = ThemeData(
    useMaterial3: true,
    //? TEXT THEME
    fontFamily: 'Exo',

    textTheme: const TextTheme().copyWith(
      bodySmall: Texts.bodySmall,
      displayMedium: Texts.titleMedium,
      displayLarge: Texts.titleLarge,
    ),
    //? COLORS
    unselectedWidgetColor: Colors.white.withOpacity(0.67),

    colorScheme: ColorScheme.fromSeed(
      seedColor: LightThemeColors.primary,
      brightness: Brightness.light,
      primary: LightThemeColors.primary,
      secondary: LightThemeColors.secondary,
      error: LightThemeColors.errorRed,
      background: LightThemeColors.background,
      onBackground: LightThemeColors.onBackground,
      shadow: LightThemeColors.black,
    ),
  );
}
