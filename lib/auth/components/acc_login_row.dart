import 'package:flutter/material.dart';
import 'package:turismo_mobile/auth/components/acc_login_tile.dart';

class AccLoginRow extends StatelessWidget {
  const AccLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AccountAuthTile(
          loginFunc: () => print('google'),
          imageFile: 'google.png',
        ),
        AccountAuthTile(
          loginFunc: () => print('face'),
          imageFile: 'facebok.png',
        ),
        AccountAuthTile(
          loginFunc: () => print('apple'),
          imageFile: 'github.png',
        ),
      ],
    );
  }
}
