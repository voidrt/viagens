import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';

final Provider<List<ItineraryModel>> userItinerariesProvider =
    Provider((_) => []);
