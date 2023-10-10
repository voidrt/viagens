import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/core/repository/providers/recommended_tab.dart';
import 'package:turismo_mobile/interface/home/components/recommended/recommended_trips_row.dart';
import 'package:turismo_mobile/interface/home/components/user_itineraries/itinerary_tile.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class AvailableTravels extends ConsumerStatefulWidget {
  const AvailableTravels({
    super.key,
    required this.trips,
    required this.constraints,
  });

  final List<ItineraryModel> trips;
  final BoxConstraints constraints;

  @override
  ConsumerState<AvailableTravels> createState() => _AvailableTravelsState();
}

class _AvailableTravelsState extends ConsumerState<AvailableTravels> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecommendedTripsRow(
            recommendedTrips: ref.watch(recommendedTripsProvider),
            constraints: widget.constraints,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              Paddings.big,
              Paddings.small,
              0,
              0,
            ),
            child: Text(
              'Suas Viagens',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          ...List.generate(
            widget.trips.length,
            (index) => ItineraryTile(
              item: widget.trips[index],
              height: widget.constraints.maxHeight,
              width: widget.constraints.maxWidth,
            ),
          ),
        ],
      ),
    );
  }
}
