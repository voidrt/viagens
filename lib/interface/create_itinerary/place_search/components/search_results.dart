import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/models/autocomplete/autocomplate_prediction.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/components/location_list_tile.dart';

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
        return LocationListTile(
          location: results[index].description!,
          press: () {},
        );
      },
    );
  }
}
