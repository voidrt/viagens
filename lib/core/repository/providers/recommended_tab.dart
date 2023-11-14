import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_day.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_place_model.dart';

final Provider<List<ItineraryModel>> recommendedTripsProvider = Provider(
  (ref) => [
    ItineraryModel(
      id: '1',
      destination: TripDestination(
        destinationName: ['Bueno Brandao', 'MG'],
        countryCode: 'br',
      ),
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Ruins_of_Somapura_Mahavihara%2C_May_2017_47.jpg/1024px-Ruins_of_Somapura_Mahavihara%2C_May_2017_47.jpg',
      dateRange: DateTimeRange(
        start: DateTime.parse("2023-01-01"),
        end: DateTime.parse("2023-01-10"),
      ),
      days: [
        TripDayModel(
          dayOrder: 1,
          date: '01/01/2023',
          placesList: [],
        ),
      ],
    ),
    ItineraryModel(
      id: '2',
      destination: TripDestination(
        destinationName: ['Hong Kong', 'CH'],
        countryCode: 'ch',
      ),
      image:
          'https://upload.wikimedia.org/wikipedia/commons/d/d7/%E8%B1%AB%E5%9B%ADScenery_in_ShangHai%2C_China_-_panoramio_%282%29.jpg',
      dateRange: DateTimeRange(
        start: DateTime.parse("2023-01-01"),
        end: DateTime.parse("2023-01-10"),
      ),
      days: [
        TripDayModel(
          dayOrder: 1,
          date: '01/01/2023',
          placesList: [],
        ),
      ],
    ),
    ItineraryModel(
      id: '3',
      destination: TripDestination(
        destinationName: ['Pratapolis', 'MG'],
        countryCode: 'br',
      ),
      image:
          'https://i.pinimg.com/originals/2a/20/0a/2a200a443bcc5a7113f8e84b050eb8cb.jpg',
      dateRange: DateTimeRange(
        start: DateTime.parse("2023-01-01"),
        end: DateTime.parse("2023-01-10"),
      ),
      days: [
        TripDayModel(
          dayOrder: 1,
          date: '01/01/2023',
          placesList: [],
        ),
      ],
    ),
    ItineraryModel(
      id: '4',
      destination: TripDestination(
        destinationName: ['Hong Kong', 'CH'],
        countryCode: 'ch',
      ),
      image:
          'https://upload.wikimedia.org/wikipedia/commons/d/d7/%E8%B1%AB%E5%9B%ADScenery_in_ShangHai%2C_China_-_panoramio_%282%29.jpg',
      dateRange: DateTimeRange(
        start: DateTime.parse("2023-01-01"),
        end: DateTime.parse("2023-01-10"),
      ),
      days: [
        TripDayModel(
          dayOrder: 1,
          date: '01/01/2023',
          placesList: [],
        ),
      ],
    ),
  ],
);
