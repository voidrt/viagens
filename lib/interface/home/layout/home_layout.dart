import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/repository/authentication.dart';
import 'package:turismo_mobile/interface/auth/components/button.dart';

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Logado como ${FirebaseAuth.instance.currentUser!.email}'),
                  BoldButton(
                    onTap: () => AuthenticationService().logOut(),
                    text: 'Sair',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
