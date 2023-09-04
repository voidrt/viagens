import 'package:turismo_mobile/core/models/itinerary/itinerary_day_model.dart';

class ItineraryModel {
  const ItineraryModel({
    required this.id,
    required this.destination,
    required this.days,
  });

  final String id;
  final String destination;
  final List<ItineraryDayModel> days;

  factory ItineraryModel.fromJson(Map<String, dynamic> json) {
    return ItineraryModel(
      id: json['id'],
      destination: json['destination'],
      days: List.generate(
        json['days'].length,
        (index) => ItineraryDayModel.fromJson(
          json['days'](index),
        ),
      ),
    );
  }
}
