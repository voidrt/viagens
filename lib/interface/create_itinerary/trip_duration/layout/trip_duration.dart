import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';

class TripDurationLayout extends ConsumerWidget {
  const TripDurationLayout({
    super.key,
    this.model,
  });

  final ItineraryModel? model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('TRIP DURATION'),
          ],
        ),
      ),
    );
  }
}
