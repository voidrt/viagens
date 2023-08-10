import 'package:flutter/material.dart';
import 'package:turismo_mobile/login_page/components/sign_row.dart';
import 'package:turismo_mobile/login_page/components/divider_text.dart';
import 'package:turismo_mobile/login_page/components/icon_header.dart';
import 'package:turismo_mobile/login_page/components/buttons.dart';
import 'package:turismo_mobile/login_page/components/text_field.dart';
import 'package:turismo_mobile/theme/light_theme/colors.dart';
import 'package:turismo_mobile/theme/light_theme/text.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';
import 'package:turismo_mobile/utils/utils.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Utils.unfocus(context),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: Paddings.big),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const IconHeader(),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Paddings.bigger,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Esqueceu sua senha?',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: FontSize.small,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: Paddings.bigger),
                  LoginButton(
                    text: 'Entrar',
                    onTap: signUserIn,
                  ),
                  const DividerText(),
                  const AuthRow(),
                  const SizedBox(height: Paddings.bigger),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nao eh registrado?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'Registre-se agora',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
