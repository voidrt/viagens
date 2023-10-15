import 'package:flutter/material.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/components/popular_places.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/components/search_bar.dart';

class PlaceSearchLayout extends StatelessWidget {
  const PlaceSearchLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          PlaceSearchBar(),
          Divider(),
          PopularPlaces(),
        ],
      ),
    );
  }
}
