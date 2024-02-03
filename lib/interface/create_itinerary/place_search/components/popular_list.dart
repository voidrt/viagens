import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/core/models/autocomplete/autocomplate_prediction.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/core/models/itinerary/trip_place_model.dart';
import 'package:turismo_mobile/core/providers/popular_cities/popular_places_provider.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/components/location_list_tile.dart';
import 'package:turismo_mobile/interface/widgets/loading_widget.dart';
import 'package:uuid/uuid.dart';

class PopularPlaces extends ConsumerWidget {
  const PopularPlaces({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(popularCitiesProvider);
    late List<AutocompletePrediction>? results = [];

    return provider.when(
      data: (data) {
        if (data?.predictions != null) {
          results = data?.predictions;
        }

        return ListView.builder(
          itemCount: results?.length,
          itemBuilder: (context, item) {
            var city = results?[item];

            return LocationListTile(
              locationName: city?.description ?? 'Dubai',
              onTapFunction: () {
                context.pushNamed(
                  'trip-duration',
                  extra: ItineraryModel(
                    id: const Uuid(),
                    destination: TripDestination(
                      destinationName: [
                        city?.structuredFormatting?.mainText ?? '',
                        city?.structuredFormatting?.secondaryText ?? ''
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
      error: (err, stack) => Text('$err : $stack'),
      loading: () => const Center(child: LoadingWidget()),
    );
  }
}
