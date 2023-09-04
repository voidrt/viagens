import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/api/urls.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:http/http.dart';

final FutureProvider<ItineraryModel> itineraryListProvider = FutureProvider(
  (ref) async {
    final Response httpResponse = await get(
      Uri.parse(Api.itineraryUrl),
    );
    if (httpResponse.statusCode == 200) {
      final Map<String, dynamic> itineraryJson = jsonDecode(httpResponse.body);

      print(itineraryJson['days'][0]);

      return ItineraryModel.fromJson(
        itineraryJson,
      );
    }

    throw Exception(
      'Houve um erro com nossos servicos, tente novamente mais tarde :()',
    );
  },
);
