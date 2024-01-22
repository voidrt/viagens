import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          width: 1,
          color: Theme.of(context).colorScheme.shadow,
        ),
      ),
      height: 360,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: Paddings.big),
    );
  }
}
