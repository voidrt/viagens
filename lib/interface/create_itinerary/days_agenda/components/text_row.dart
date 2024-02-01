import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/interface/widgets/gradient_mask.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class AgendaTextRow extends StatelessWidget {
  const AgendaTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  LineIcons.clock,
                  size: 35,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: Paddings.medium,
                ),
                child: Text(
                  'Cronograma da viagem',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Paddings.medium,
            horizontal: Paddings.small,
          ),
          child: Text(
            'Faca seu cronograma de acordo com o tempo livre em cada dia',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
