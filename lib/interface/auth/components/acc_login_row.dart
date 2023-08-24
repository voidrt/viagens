import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/repository/authentication.dart';
import 'package:turismo_mobile/interface/auth/components/acc_login_tile.dart';

class AccLoginRow extends StatelessWidget {
  const AccLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    AuthenticationService auth = AuthenticationService();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AccountAuthTile(
          loginFunc: () => auth.googleSignIn(),
          imageFile: 'google.png',
        ),
      ],
    );
  }
}
