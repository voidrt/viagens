import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/core/repository/providers/itinerary_providers.dart';
import 'package:turismo_mobile/core/repository/providers/recommended_travels.dart';
import 'package:turismo_mobile/interface/home/components/recommended/recommended_trips_row.dart';
import 'package:turismo_mobile/interface/home/components/user_itineraries/add_itinerary_text.dart';
import 'package:turismo_mobile/interface/home/components/user_itineraries/available_travels.dart';

import 'package:turismo_mobile/interface/widgets/clear_appbar.dart';

class HomeLayout extends ConsumerWidget {
  const HomeLayout({super.key});

  void _createItinerary() {
    print('to be finished');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<ItineraryModel>> userTrips =
        ref.watch(itineraryListProvider);
    final List<ItineraryModel> recommendedTrips =
        ref.watch(recommendedTripsProvider);

    final ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: ClearAppBar(
        appBar: AppBar(),
        widgets: [
          Icon(
            LineIcons.bell,
            size: 30,
            color: colors.onBackground,
          ),
        ],
        leading: IconButton(
          icon: Icon(
            LineIcons.userCircleAlt,
            size: 33,
            color: colors.onBackground,
          ),
          color: colors.shadow,
          onPressed: () {
            context.goNamed('user-profile');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createItinerary,
        tooltip: 'Adicionar itinerario',
        backgroundColor: colors.primary,
        foregroundColor: colors.background,
        elevation: 4,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return userTrips.when(
              data: (data) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      RecommendedTripsRow(
                        constraints: constraints,
                        recommendedTrips: recommendedTrips,
                      ),
                      data.isEmpty
                          ? AddItineraryText(colors: colors)
                          : AvailableTravels(
                              trips: data,
                              constraints: constraints,
                            ),
                    ],
                  ),
                );
              },
              error: (error, stackTrace) {
                return Scaffold(
                  body: Column(
                    children: [
                      Text(
                        error.toString(),
                      ),
                      Text(
                        stackTrace.toString(),
                      ),
                    ],
                  ),
                );
              },
              loading: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: colors.secondary,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
