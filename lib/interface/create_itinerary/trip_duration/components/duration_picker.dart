import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/interface/widgets/button.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';
import 'dart:math';

class DurationPicker extends StatefulWidget {
  const DurationPicker({
    super.key,
    required this.maxHeight,
    required this.model,
  });

  final double maxHeight;
  final ItineraryModel? model;

  @override
  State<DurationPicker> createState() => _DurationPickerState();
}

class _DurationPickerState extends State<DurationPicker> {
  late int days;

  void decrement() {
    setState(() => days = max(days - 1, 0));
  }

  void increment() {
    setState(() => days++);
  }

  @override
  void initState() {
    days = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: widget.maxHeight / 11,
          margin: const EdgeInsets.symmetric(horizontal: Paddings.big),
          padding: const EdgeInsets.symmetric(
            vertical: Paddings.medium,
            horizontal: Paddings.small,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              width: 1,
              color: Theme.of(context).colorScheme.shadow,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: decrement,
                    icon: const Icon(LineIcons.minus),
                  ),
                  const SizedBox(width: Paddings.small),
                  VerticalDivider(
                    width: 1,
                    color: Theme.of(context).colorScheme.shadow,
                    endIndent: 2,
                    indent: 2,
                    thickness: 1,
                  ),
                ],
              ),
              Text(
                '$days dias',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Row(
                children: [
                  VerticalDivider(
                    width: 1,
                    color: Theme.of(context).colorScheme.shadow,
                    endIndent: 2,
                    indent: 2,
                    thickness: 1,
                  ),
                  const SizedBox(width: Paddings.small),
                  IconButton(
                    onPressed: increment,
                    icon: const Icon(LineIcons.plus),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: Paddings.kDefault),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Paddings.big),
          child: BoldButton(
            onTap: () {
              context.pushNamed(
                'trip-duration',
                extra: widget.model?.copyWith(),
              );
            },
            text: 'Concluido',
            border: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
