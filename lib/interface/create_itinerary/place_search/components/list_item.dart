import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_place_model.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class PopularCitiesListItem extends StatelessWidget {
  const PopularCitiesListItem({
    super.key,
    required this.city,
  });

  final TripDestination city;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Paddings.kDefault,
              vertical: Paddings.small,
            ),
            child: Text(
              city.destinationName.join(', '),
            ),
          ),
        ],
      ),
    );
  }
}
