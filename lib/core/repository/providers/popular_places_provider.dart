import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_place_model.dart';

final popularCitiesProvider = Provider<List<TripDestination>>(
  (_) => [
    TripDestination(
      destinationName: ['Mumbai', 'India'],
    ),
    TripDestination(
      destinationName: ['Rio de Janeiro', 'Brazil'],
    ),
    TripDestination(
      destinationName: ['Vaticano'],
    ),
    TripDestination(
      destinationName: ['Dubai', 'Emirados Arabes'],
    ),
    TripDestination(
      destinationName: ['Dubai', 'Emirados Arabes'],
    ),
    TripDestination(
      destinationName: ['Dubai', 'Emirados Arabes'],
    ),
  ],
);
