import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/text_settings/text.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Paddings.medium,
        bottom: Paddings.kDefault,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Esqueceu sua senha? ',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: FontSize.small,
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
        ],
      ),
    );
  }
}
