import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/core/providers/trip_duration/duration_provider.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class DurationPicker extends ConsumerWidget {
  const DurationPicker({
    super.key,
    required this.maxHeight,
    required this.model,
  });

  final double maxHeight;
  final ItineraryModel? model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final days = ref.watch(tripDurationProvider).duration;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Paddings.big),
      child: Container(
        height: maxHeight / 14,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: Paddings.small,
          horizontal: Paddings.small,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Theme.of(context).colorScheme.shadow,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: ref.read(tripDurationProvider).decrement,
                  icon: const Icon(
                    LineIcons.minus,
                  ),
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
                  onPressed: ref.read(tripDurationProvider).increment,
                  icon: const Icon(
                    LineIcons.plus,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
