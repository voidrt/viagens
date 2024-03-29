import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/core/authentication/authentication.dart';
import 'package:turismo_mobile/interface/widgets/button.dart';
import 'package:turismo_mobile/interface/widgets/custom_scaffold.dart';
import 'package:turismo_mobile/interface/user/components/user_icon.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class UserLayout extends StatelessWidget {
  const UserLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWithAppBar(
      title: 'Perfil do Usuario',
      appBarLeading: IconButton(
        icon: const Icon(LineIcons.arrowLeft),
        onPressed: () => context.pop(),
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
                Padding(
                  padding: const EdgeInsets.all(Paddings.bigger),
                  child: BoldButton(
                    onTap: () => AuthenticationService().logOut(),
                    text: 'Sair',
                    border: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
