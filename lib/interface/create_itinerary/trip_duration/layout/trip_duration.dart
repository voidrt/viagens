import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/interface/create_itinerary/trip_duration/components/text_row.dart';
import 'package:turismo_mobile/interface/widgets/clear_appbar.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class TripDurationLayout extends ConsumerWidget {
  const TripDurationLayout({
    super.key,
    this.model,
  });

  final ItineraryModel? model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: ClearAppBar(
        appBar: AppBar(),
        leading: IconButton(
          icon: const Icon(LineIcons.arrowLeft),
          onPressed: () => context.pop(),
        ),
        widgets: [
          IconButton(
            onPressed: () => context.pushNamed('home'),
            icon: const Icon(
              LineIcons.check,
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: Paddings.bigger,
          horizontal: Paddings.bigger,
        ),
        child: Column(
          children: [
            TextRow(),
          ],
        ),
      ),
    );
  }
}
