import 'package:flutter/material.dart';
import 'package:turismo_mobile/login_page/components/acc_auth_tile.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class AuthRow extends StatelessWidget {
  const AuthRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AccountAuthTile(
          signInFunction: () => print('google'),
          imagePath: 'assets/images/google.png',
        ),
        const SizedBox(width: Paddings.big),
        AccountAuthTile(
          signInFunction: () => print('apple'),
          imagePath: 'assets/images/apple.png',
        )
      ],
    );
  }
}
