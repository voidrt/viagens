import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/light_theme/colors.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Nao eh registrado?',
          style: TextStyle(
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(width: 4),
        const Text(
          'Registre-se agora',
          style: TextStyle(
            color: LightThemeColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
