import 'package:turismo_mobile/core/models/itinerary/itinerary_place.dart';

class ItineraryDayModel {
  ItineraryDayModel({
    required this.dayOrder,
    required this.date,
    required this.placesList,
  });

  final int dayOrder;
  final String date;
  final List<ItineraryPlaceModel> placesList;
}
