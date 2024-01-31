import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/interface/widgets/gradient_mask.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class TextRow extends StatelessWidget {
  const TextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Paddings.kDefault,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const GradientMask(
                child: Icon(
                  LineIcons.calendarWithWeekFocus,
                  size: 35,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: Paddings.medium,
                ),
                child: Text(
                  'Dias de viagem',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Paddings.small,
          ),
          child: Text(
            ' Escolha a duracao da sua viagem:',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
