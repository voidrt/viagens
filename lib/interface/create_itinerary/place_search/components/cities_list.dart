import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_place_model.dart';
import 'package:turismo_mobile/core/repository/providers/popular_places_provider.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/components/list_item.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class PopularPlaces extends ConsumerWidget {
  const PopularPlaces({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<TripDestination> popularCities = ref.watch(popularCitiesProvider);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Paddings.medium,
            horizontal: Paddings.big,
          ),
          child: Text(
            'Cidades Populares',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        ...popularCities
            .map(
              (city) => PopularCitiesListItem(
                city: city,
              ),
            )
            .toList()
      ],
    );
  }
}
