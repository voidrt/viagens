import 'package:flutter/material.dart';
import 'package:turismo_mobile/login_page/screens/log_in.dart';
import 'package:turismo_mobile/theme/light_theme/app_theme.dart';

void main() {
  runApp(const Turismo());
}

class Turismo extends StatelessWidget {
  const Turismo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      theme: LightTheme.lightThemeSettings,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark(),
    );
  }
}
