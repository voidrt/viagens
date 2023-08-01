import 'package:flutter/material.dart';
import 'package:turismo_mobile/screens/auth/sign_in.dart';
import 'package:turismo_mobile/theme/light/app_theme.dart';

void main() {
  runApp(const Turismo());
}

class Turismo extends StatelessWidget {
  const Turismo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SignIn(),
      debugShowCheckedModeBanner: false,
      theme: LightTheme.lightThemeSettings,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
    );
  }
}
