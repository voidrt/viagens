import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

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
        padding: const EdgeInsets.only(
          bottom: Paddings.bigger * 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              LineIcons.luggageCart,
              size: 60,
              color: colors.primary,
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
