import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/api/network_utils.dart';
import 'package:turismo_mobile/core/models/autocomplete/place_auto_complate_response.dart';

final autocompleteProvider = Provider.family(
  (ref, String input) async {
    final response = await ref.watch(networkServiceProvider).httpFetch(
          Uri.https(
            'maps.googleapis.com',
            'maps/api/place/autocomplete/json',
            {
              "input": input,
              "language": 'pt_BR',
              "types": "(cities)",
              "key": NetworkUtil.placesApiKey,
            },
          ),
        );

    if (response != null) {
      PlaceAutocompleteResponse result =
          PlaceAutocompleteResponse.parseAutocompleteResult(response);

      return result;
    }
  },
);
