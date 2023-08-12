import 'package:flutter/material.dart';
import 'package:turismo_mobile/login_page/components/icon_header.dart';
import 'package:turismo_mobile/login_page/components/layout_column.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';
import 'package:turismo_mobile/utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Utils.unfocus(context),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: Paddings.big,
                horizontal: Paddings.big,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const IconHeader(),
                  LoginPageLayout(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
