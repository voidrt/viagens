import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_place_model.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_day.dart';
import 'package:uuid/uuid.dart';

class ItineraryModel {
  const ItineraryModel({
    this.id,
    this.destination,
    this.days,
    this.dateRange,
    this.image,
  });

  final Uuid? id;
  final TripDestination? destination;
  final DateTimeRange? dateRange;
  final List<TripDayModel>? days;
  final String? image;

  @override
  String toString() {
    return '''
    id: $id,
    destination: ${destination?.destinationName},
    dateRange: $dateRange,
''';
  }

  factory ItineraryModel.fromJson(Map<String, dynamic> json) {
    return ItineraryModel(
      id: json['id'],
      destination: TripDestination.fromJson(json['destination']),
      dateRange: DateTimeRange(
        start: json['start date'],
        end: json['end date'],
      ),
      image: json['image'],
      days: List.generate(
        json['days'].length,
        (index) => TripDayModel.fromJson(
          json['days'](index),
        ),
      ),
    );
  }
}
