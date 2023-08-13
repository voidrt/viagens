import 'package:flutter/material.dart';
import 'package:turismo_mobile/interface/auth/components/acc_login_tile.dart';
import 'package:turismo_mobile/interface/auth/components/snackbar.dart';

class AccLoginRow extends StatelessWidget {
  const AccLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AccountAuthTile(
          loginFunc: () =>
              ScaffoldMessenger.of(context).showSnackBar(textSnackBar),
          imageFile: 'google.png',
        ),
        AccountAuthTile(
          loginFunc: () =>
              ScaffoldMessenger.of(context).showSnackBar(textSnackBar),
          imageFile: 'facebok.png',
        ),
        AccountAuthTile(
          loginFunc: () =>
              ScaffoldMessenger.of(context).showSnackBar(textSnackBar),
          imageFile: 'github.png',
        ),
      ],
    );
  }
}
