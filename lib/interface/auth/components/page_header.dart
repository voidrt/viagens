import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';
import 'package:turismo_mobile/theme/text_settings/text.dart';

class IconHeader extends StatelessWidget {
  const IconHeader({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Paddings.big,
            bottom: Paddings.small,
          ),
          child: CircleAvatar(
            radius: screenHeight / 12,
            backgroundColor: Theme.of(context).colorScheme.shadow,
            child: Center(
              child: Image.asset(
                'assets/images/full-logo.png',
                scale: 1.04,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: Paddings.big,
          ),
          child: Text(
            'Bem-vindo de volta!\nSentimos sua falta...',
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontSize: FontSize.defaultTitle),
          ),
        ),
      ],
    );
  }
}
