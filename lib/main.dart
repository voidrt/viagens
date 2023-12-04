import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/router/routes.dart';
import 'package:turismo_mobile/theme/light_theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(child: Turismo()),
  );
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
