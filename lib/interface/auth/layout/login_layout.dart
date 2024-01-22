import 'package:flutter/material.dart';
import 'package:turismo_mobile/interface/auth/components/acc_login_row.dart';
import 'package:turismo_mobile/interface/auth/components/divider_text.dart';
import 'package:turismo_mobile/interface/auth/components/input_section.dart';
import 'package:turismo_mobile/interface/auth/components/sign_in_text.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class LoginScreenLayout extends StatelessWidget {
  const LoginScreenLayout({
    super.key,
  });

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
        child: const Padding(
          padding: EdgeInsets.all(
            Paddings.big,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputSection(),
              DividerText(),
              AccLoginRow(),
              SizedBox(height: Paddings.big),
              CreateAccountText()
            ],
          ),
        ),
      ),
    );
  }
}
