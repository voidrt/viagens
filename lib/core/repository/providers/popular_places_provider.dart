import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/models/destination/trip_place_model.dart';

final popularCitiesProvider = Provider<List<TripDestination>>((_) => []);
