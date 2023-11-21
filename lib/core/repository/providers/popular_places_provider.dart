import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_place_model.dart';

final popularCitiesProvider = Provider<List<TripDestination>>(
  (_) => [
    TripDestination(
      destinationName: ['Mumbai', 'India'],
      countryCode: 'c_in',
    ),
    TripDestination(
      destinationName: ['Paris, France'],
      countryCode: 'fr',
    ),
    TripDestination(
      destinationName: ['Dubai', 'Emirados Arabes'],
      countryCode: 'ae',
    ),
    TripDestination(
      destinationName: ['Cosmopolis', 'Brasil'],
      countryCode: 'br',
    )
  ],
);
