import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_place_model.dart';

final popularCitiesProvider = Provider<List<TripDestination>>(
  (_) => [
    TripDestination(
      destinationName: ['Mumbai', 'India'],
      countryCode: 'c_in',
    ),
    TripDestination(
      destinationName: ['Rio de Janeiro', 'Brazil'],
      countryCode: 'br',
    ),
    TripDestination(
      destinationName: ['Vaticano'],
      countryCode: 'va',
    ),
    TripDestination(
      destinationName: ['Dubai', 'Emirados Arabes'],
      countryCode: 'ae',
    ),
    TripDestination(
      destinationName: ['Dubai', 'Emirados Arabes'],
      countryCode: 'ae',
    ),
    TripDestination(
      destinationName: ['Dubai', 'Emirados Arabes'],
      countryCode: 'ae',
    ),
  ],
);
