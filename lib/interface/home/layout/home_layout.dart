import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/core/providers/itinerary/itinerary_providers.dart';
import 'package:turismo_mobile/core/providers/recommended_trips/recommended_tab.dart';
import 'package:turismo_mobile/interface/home/components/recommended/recommended_trips_row.dart';
import 'package:turismo_mobile/interface/home/components/user_itineraries/add_itinerary_text.dart';
import 'package:turismo_mobile/interface/home/layout/available_travels.dart';

import 'package:turismo_mobile/interface/widgets/clear_appbar.dart';

class HomeLayout extends ConsumerWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userTrips = ref.watch(itineraryListProvider);
    final recommendedTrips = ref.watch(recommendedTripsProvider);

    final ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: ClearAppBar(
        title: 'App do Joao',
        appBar: AppBar(),
        widgets: [
          Icon(
            LineIcons.bell,
            size: 30,
            color: colors.background,
          ),
        ],
        leading: IconButton(
          icon: Icon(
            LineIcons.userCircleAlt,
            size: 33,
            color: colors.background,
          ),
          color: colors.shadow,
          onPressed: () {
            context.pushNamed('user-profile');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushNamed('create-itinerary'),
        elevation: 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                colors.primary,
                colors.secondary,
              ],
            ),
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: colors.background,
              size: 30,
            ),
          ),
        ),
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
                        recommendedTrips: recommendedTrips,
                        constraints: constraints,
                        alreadyActive: false,
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
