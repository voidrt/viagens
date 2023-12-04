import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/api/network_utils.dart';

final placeDetailsProvider = Provider.family(
  (ref, String placeId) async {
    final response = await ref.watch(networkServiceProvider).httpFetch(
          Uri.https(
            'maps.googleapis.com',
            'maps/api/place/details/json',
            {
              "place_id": placeId,
              "key": NetworkUtil.placesApiKey,
            },
          ),
        );
    if (response != null) print(response);
  },
);
