import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:turismo_mobile/interface/auth/login_screen.dart';
import 'package:turismo_mobile/interface/home/layout/home_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? const HomePageLayout()
              : const LoginScreen();
        },
      ),
    );
  }
}
