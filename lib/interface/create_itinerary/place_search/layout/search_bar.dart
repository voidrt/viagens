import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/core/api/constants.dart';
import 'package:turismo_mobile/core/api/network_utility.dart';
import 'package:turismo_mobile/core/models/autocomplete/autocomplate_prediction.dart';
import 'package:turismo_mobile/core/models/autocomplete/place_auto_complate_response.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/components/popular_list.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/components/search_results.dart';
import 'package:turismo_mobile/interface/widgets/button.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class SearchCity extends ConsumerStatefulWidget {
  const SearchCity({super.key});

  @override
  ConsumerState<SearchCity> createState() => _SearchCityState();
}

class _SearchCityState extends ConsumerState<SearchCity> {
  late bool activeSearch = false;
  late List<AutocompletePrediction> searchResults = [];

  void autocompleteSearch(String input) async {
    Uri url = Uri.https(
      'maps.googleapis.com',
      'maps/api/place/autocomplete/json',
      {"input": input, "key": Api.placesApiKey},
    );

    String? response = await NetworkUtility.httpFetch(url);

    if (response != null) {
      PlaceAutocompleteResponse result =
          PlaceAutocompleteResponse.parseAutocompleteResult(response);

      if (result.predictions != null) {
        setState(() => searchResults = result.predictions!);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Paddings.kDefault,
            bottom: Paddings.small,
            left: Paddings.big,
            right: Paddings.big + 10,
          ),
          child: TextField(
            textInputAction: TextInputAction.search,
            onChanged: (input) {
              setState(
                () {
                  activeSearch = input != '';
                },
              );
              autocompleteSearch(input);
            },
            decoration: const InputDecoration(
              hintText: 'Pesquise uma cidade',
              icon: Icon(
                LineIcons.search,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: Paddings.medium,
            bottom: Paddings.medium,
            left: Paddings.kDefault,
          ),
          child: Text(
            activeSearch ? 'Resultados da Pesquisa' : 'Cidades Populares',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Expanded(
          child: activeSearch
              ? SearchResults(
                  results: searchResults,
                )
              : const PopularPlaces(),
        )
      ],
    );
  }
}
