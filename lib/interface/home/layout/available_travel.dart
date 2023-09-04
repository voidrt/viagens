import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/interface/home/components/itinerary_tile.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class AvailableTravels extends StatelessWidget {
  const AvailableTravels({
    super.key,
    required this.trips,
    required this.constraints,
  });

  final List<ItineraryModel> trips;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            Paddings.big - 5,
            Paddings.kDefault,
            0,
            0,
          ),
          child: Text(
            'Viagens',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        ...List.generate(
          trips.length,
          (index) => ItineraryTile(
            item: trips[index],
            height: constraints.maxHeight / 3,
            width: constraints.maxWidth,
          ),
        ),
      ],
    );
  }
}
