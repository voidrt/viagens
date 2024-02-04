import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class ProgressHorizontalBar extends StatelessWidget {
  const ProgressHorizontalBar({
    super.key,
    required this.progress,
  });

  final int progress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: Paddings.kDefault + 5,
            horizontal: Paddings.small,
          ),
          padding: const EdgeInsets.symmetric(horizontal: Paddings.medium),
          width: 90,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              FractionallySizedBox(
                widthFactor: progress * (1 / 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              )
            ],
          ),
        ),
        Text(
          'Passo $progress/5',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Theme.of(context).colorScheme.background),
        ),
      ],
    );
  }
}
