import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/interface/widgets/gradient_mask.dart';
import 'package:turismo_mobile/interface/widgets/outlined_container.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class TextRow extends StatelessWidget {
  const TextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const OutlinedGradientContainer(
              child: GradientMask(
                child: Icon(
                  LineIcons.calendarWithWeekFocus,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: Paddings.medium,
              ),
              child: Text(
                'Duracao da viagem.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Paddings.small + 5,
            horizontal: Paddings.medium,
          ),
          child: Text(
            'Insira a quantidade de dias que durara a sua viagem:',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
