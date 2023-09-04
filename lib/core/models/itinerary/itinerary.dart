import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_day.dart';

class ItineraryModel {
  const ItineraryModel({
    required this.id,
    required this.destination,
    required this.days,
    required this.dateRange,
  });

  final String id;
  final String destination;
  final DateTimeRange dateRange;
  final List<TripDayModel> days;

  factory ItineraryModel.fromJson(Map<String, dynamic> json) {
    return ItineraryModel(
      id: json['id'],
      destination: json['destination'],
      dateRange: DateTimeRange(
        start: json['start date'],
        end: json['end date'],
      ),
      days: List.generate(
        json['days'].length,
        (index) => TripDayModel.fromJson(
          json['days'](index),
        ),
      ),
    );
  }
}
