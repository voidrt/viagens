import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/interface/widgets/gradient_mask.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';
import 'dart:math' as math;

class AddItineraryText extends StatelessWidget {
  const AddItineraryText({
    super.key,
    required this.colors,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Paddings.bigger * 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(
              angle: math.pi / 4,
              child: GradientMask(
                child: Icon(
                  LineIcons.mapPin,
                  size: 100,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            Text(
              'Crie um itinerario.',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
