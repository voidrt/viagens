import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class IconHeader extends StatelessWidget {
  const IconHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            bottom: Paddings.big,
          ),
          child: Icon(
            Icons.mode_of_travel_rounded,
            size: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: Paddings.big,
            bottom: Paddings.big,
          ),
          child: Text(
            'Bem-vindo de volta\nSentimos sua falta!',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
