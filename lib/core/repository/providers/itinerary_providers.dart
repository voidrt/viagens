// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/api/urls.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:http/http.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_day.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_place_model.dart';

final FutureProvider<List<ItineraryModel>> itineraryListProvider =
    FutureProvider(
  (ref) async {
    final Response httpResponse = await get(
      Uri.parse(Api.itineraryUrl),
    );
    if (httpResponse.statusCode == 200) {
      final Map<String, dynamic> itineraryJson = jsonDecode(httpResponse.body);

      return [
        ItineraryModel(
          id: '1',
          destination:
              TripDestination(destinationName: ['Bueno Brandao', 'MG']),
          image:
              'https://upload.wikimedia.org/wikipedia/commons/1/1b/Bueno_Brand%C3%A3o.JPG',
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
          destination: TripDestination(destinationName: ['Pratapolis', 'MG']),
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
          destination: TripDestination(destinationName: ['Pratapolis', 'MG']),
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
      ];
    }

    throw Exception(
      'Houve um erro com nossos servicos, tente novamente mais tarde :()',
    );
  },
);
