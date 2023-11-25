import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/light_theme/colors.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';
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
    dividerColor: LightThemeColors.lightGrey.withOpacity(0.1),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: LightThemeColors.onBackground,
      filled: true,
      contentPadding: EdgeInsets.symmetric(
        vertical: Paddings.small,
        horizontal: Paddings.big,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: LightThemeColors.lightGrey,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        borderSide: BorderSide(
          color: LightThemeColors.lightGrey,
        ),
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: LightThemeColors.primary,
      primary: LightThemeColors.primary,
      secondary: LightThemeColors.secondary,
      error: LightThemeColors.errorRed,
      background: LightThemeColors.background,
      onBackground: LightThemeColors.onBackground,
      shadow: LightThemeColors.black,
    ),
  );
}
