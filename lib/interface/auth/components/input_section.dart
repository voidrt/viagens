import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/repository/authentication/authentication.dart';
import 'package:turismo_mobile/interface/auth/components/button.dart';
import 'package:turismo_mobile/interface/auth/components/forgot_password.dart';
import 'package:turismo_mobile/interface/auth/components/text_field.dart';

class InputSection extends StatelessWidget {
  const InputSection({super.key});

  @override
  Widget build(BuildContext context) {
    final userEmail = TextEditingController();
    final password = TextEditingController();

    return Column(
      children: [
        AppTextField(
          userEmail,
          hintText: 'Usuario',
          obscureText: false,
        ),
        AppTextField(
          password,
          hintText: 'Senha',
          obscureText: true,
        ),
        const ForgotPassword(),
        BoldButton(
          text: 'Entrar',
          onTap: () {
            AuthenticationService().emailSignIn(
              email: userEmail.text,
              password: password.text,
            );
          },
        ),
      ],
    );
  }
}
