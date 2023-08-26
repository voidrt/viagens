import 'package:turismo_mobile/core/models/itinerary/itinerary_day_model.dart';

class TravelItineraryModel {
  const TravelItineraryModel({
    required this.id,
    required this.destination,
    required this.days,
  });

  final String id;
  final String destination;
  final List<ItineraryDayModel> days;

  factory TravelItineraryModel.fromJson(Map<String, dynamic> json) {
    return TravelItineraryModel(
      id: json['id'],
      destination: json['destination'],
      days: json['days'],
    );
  }
}
