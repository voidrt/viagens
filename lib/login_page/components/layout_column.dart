import 'package:flutter/material.dart';
import 'package:turismo_mobile/login_page/components/forgot_password.dart';
import 'package:turismo_mobile/login_page/components/acc_sign_row.dart';
import 'package:turismo_mobile/login_page/components/divider_text.dart';
import 'package:turismo_mobile/login_page/components/buttons.dart';
import 'package:turismo_mobile/login_page/components/sign_in_text.dart';
import 'package:turismo_mobile/login_page/components/text_field.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class LoginPageLayout extends StatelessWidget {
  LoginPageLayout({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTextField(
          controller: usernameController,
          hintText: 'Usuario',
          obscureText: false,
        ),
        AppTextField(
          controller: passwordController,
          hintText: 'Senha',
          obscureText: true,
        ),
        const ForgotPassword(),
        LoginButton(
          text: 'Entrar',
          onTap: signUserIn,
        ),
        const DividerText(),
        const AuthRow(),
        const SizedBox(height: Paddings.bigger),
        const SignInText()
      ],
    );
  }
}
