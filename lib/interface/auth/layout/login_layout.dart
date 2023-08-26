import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/repository/authentication.dart';
import 'package:turismo_mobile/interface/auth/components/acc_login_row.dart';
import 'package:turismo_mobile/interface/auth/components/button.dart';
import 'package:turismo_mobile/interface/auth/components/divider_text.dart';
import 'package:turismo_mobile/interface/auth/components/sign_in_text.dart';
import 'package:turismo_mobile/interface/auth/components/text_field.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

import '../components/forgot_password.dart';

class LoginScreenLayout extends StatelessWidget {
  LoginScreenLayout({
    super.key,
  });

  final userEmail = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(
            Paddings.big,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextField(
                controller: userEmail,
                hintText: 'Usuario',
                obscureText: false,
              ),
              AppTextField(
                controller: password,
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
              const DividerText(),
              const AccLoginRow(),
              const SizedBox(height: Paddings.bigger),
              const CreateAccountText()
            ],
          ),
        ),
      ),
    );
  }
}
