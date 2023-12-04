import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/api/network_utils.dart';

final placePhotoProvider = Provider.family(
  (
    ref,
    String reference,
  ) async {
    final response = ref.watch(networkServiceProvider).httpFetch(
          Uri.https(
            'maps.googleapis.com',
            'maps/api/place/photo',
            {
              "maxwidth": 10000,
              "reference": reference,
              "key": NetworkUtil.placesApiKey,
            },
          ),
        );
    return response;
  },
);
