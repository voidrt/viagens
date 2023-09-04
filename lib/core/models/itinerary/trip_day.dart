import 'package:turismo_mobile/core/models/itinerary/trip.dart';

class TripDayModel {
  TripDayModel({
    required this.dayOrder,
    required this.date,
    required this.placesList,
  });

  final int dayOrder;
  final String date;
  final List<ItineraryTripModel> placesList;

  factory TripDayModel.fromJson(Map<String, dynamic> jsonDay) {
    return TripDayModel(
      dayOrder: jsonDay['day'],
      date: jsonDay['date'],
      placesList: List.generate(
        jsonDay['places'].length,
        (index) => ItineraryTripModel.fromJson(
          jsonDay['places'](index),
        ),
      ),
    );
  }
}
