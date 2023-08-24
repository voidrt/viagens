import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/utils/utils.dart';
import 'package:turismo_mobile/interface/auth/components/page_header.dart';
import 'package:turismo_mobile/interface/auth/layout/login_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Utils.unfocus(context),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topLeft,
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
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconHeader(
                        screenHeight: constraints.maxHeight,
                      ),
                      LoginScreenLayout(),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
