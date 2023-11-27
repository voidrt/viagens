import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_place_model.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';
import 'package:dash_flags/dash_flags.dart';

class PopularPlacesListItem extends StatelessWidget {
  const PopularPlacesListItem({
    super.key,
    required this.place,
  });

  final TripDestination place;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            context.pushNamed('trip-duration');
          },
          child: Card(
            color: Theme.of(context).colorScheme.background,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Paddings.kDefault,
              ),
              child: Row(
                children: [
                  CountryFlag(
                    country: Country.fromCode(place.countryCode),
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Paddings.kDefault,
                      vertical: Paddings.medium,
                    ),
                    child: Text(
                      place.destinationName.join(', '),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Divider(
          indent: Paddings.kDefault,
          endIndent: Paddings.big + 5,
        )
      ],
    );
  }
}
