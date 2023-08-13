import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/auth/components/forgot_password.dart';
import 'package:turismo_mobile/auth/components/acc_login_row.dart';
import 'package:turismo_mobile/auth/components/divider_text.dart';
import 'package:turismo_mobile/auth/components/button.dart';
import 'package:turismo_mobile/auth/components/sign_in_text.dart';
import 'package:turismo_mobile/auth/components/text_field.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class LoginScreenLayout extends StatelessWidget {
  LoginScreenLayout({
    super.key,
  });

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

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
              BoldButton(
                text: 'Entrar',
                onTap: () => context.goNamed('user-profile'),
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
