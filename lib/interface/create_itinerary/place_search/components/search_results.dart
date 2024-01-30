import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/core/models/autocomplete/autocomplate_prediction.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_place_model.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/components/location_list_tile.dart';
import 'package:uuid/uuid.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({
    super.key,
    required this.results,
  });

  final List<AutocompletePrediction> results;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        AutocompletePrediction city = results[index];
        ItineraryModel itineraryModel = ItineraryModel(
          id: const Uuid(),
          destination: TripDestination(
            destinationName: [
              city.structuredFormatting?.mainText ?? '',
              city.structuredFormatting?.secondaryText ?? ''
            ],
          ),
        );

        return LocationListTile(
          locationName: city.description ?? '',
          onTapFunction: () {
            context.pushNamed('trip-duration', extra: itineraryModel);
          },
        );
      },
    );
  }
}
