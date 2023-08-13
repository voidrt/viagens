import 'package:flutter/material.dart';
import 'package:turismo_mobile/auth/components/page_header.dart';
import 'package:turismo_mobile/auth/components/layout_column.dart';
import 'package:turismo_mobile/core/utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Utils.unfocus(context),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ],
          ),
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const IconHeader(),
                  LoginScreenLayout(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}