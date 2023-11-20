import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_place_model.dart';
import 'package:turismo_mobile/core/repository/providers/popular_places_provider.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/components/list_item.dart';

class PopularPlaces extends ConsumerWidget {
  const PopularPlaces({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<TripDestination> popularCities = ref.watch(popularCitiesProvider);

    popularCities.sort(
      (element, otherElement) {
        return element.destinationName[0].compareTo(
          otherElement.destinationName[0],
        );
      },
    );

    return Expanded(
      child: ListView.builder(
        itemCount: popularCities.length,
        itemBuilder: (context, item) {
          return PopularCitiesListItem(place: popularCities[item]);
        },
      ),
    );
  }
}
