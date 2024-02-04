import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/core/providers/trip_duration/duration_provider.dart';
import 'package:turismo_mobile/interface/create_itinerary/trip_duration/components/calendar.dart';
import 'package:turismo_mobile/interface/create_itinerary/trip_duration/components/duration_picker.dart';
import 'package:turismo_mobile/interface/create_itinerary/trip_duration/components/text_row.dart';
import 'package:turismo_mobile/interface/widgets/custom_scaffold.dart';
import 'package:turismo_mobile/interface/widgets/filling_horizontal_bar.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class TripDurationLayout extends ConsumerWidget {
  const TripDurationLayout({
    super.key,
    this.model,
  });

  final ItineraryModel? model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var tripDuration = ref.watch(tripDurationProvider).duration - 1;

    return CustomScaffoldWithAppBar(
      appBarLeading: IconButton(
        icon: const Icon(LineIcons.arrowLeft),
        onPressed: () => context.pop(),
      ),
      actions: const [
        ProgressHorizontalBar(progress: 2),
      ],
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: Paddings.big),
            child: Column(
              children: [
                const TripDurationTextRow(),
                const SizedBox(
                  height: Paddings.kDefault,
                ),
                DurationPicker(
                  maxHeight: constraints.maxHeight,
                ),
                const SizedBox(height: Paddings.medium),
                CalendarWidget(
                  tripDuration: tripDuration,
                  model: model,
                  constraints: constraints,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
