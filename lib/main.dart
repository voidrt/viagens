import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/go_router/routes.dart';
import 'package:turismo_mobile/theme/light_theme/app_theme.dart';

void main() {
  runApp(const Turismo());
}

class Turismo extends StatelessWidget {
  const Turismo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: LightTheme.lightThemeSettings,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark(),
      routerConfig: Routes.appRoutes,
    );
  }
}
