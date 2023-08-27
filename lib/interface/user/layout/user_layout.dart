import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/repository/authentication.dart';
import 'package:turismo_mobile/interface/auth/components/button.dart';
import 'package:turismo_mobile/interface/widgets/clear_appbar.dart';
import 'package:turismo_mobile/interface/user/components/user_icon.dart';

class UserLayout extends StatelessWidget {
  const UserLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ClearAppBar(
        appBar: AppBar(),
        title: const Text('User Profile'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Column(
              children: [
                UserIcon(
                  screenHeight: constraints.maxHeight,
                  image: 'assets/images/github.png',
                ),
                Text(FirebaseAuth.instance.currentUser!.email ?? 'Me'),
                BoldButton(
                  onTap: () => AuthenticationService().logOut(),
                  text: 'Sair',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
