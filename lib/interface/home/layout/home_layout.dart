import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/core/providers/itinerary_providers.dart';
import 'package:turismo_mobile/core/providers/recommended_tab.dart';
import 'package:turismo_mobile/interface/home/components/recommended/recommended_trips_row.dart';
import 'package:turismo_mobile/interface/home/components/user_itineraries/add_itinerary_text.dart';
import 'package:turismo_mobile/interface/home/layout/available_travels.dart';

import 'package:turismo_mobile/interface/widgets/clear_appbar.dart';
import 'package:turismo_mobile/interface/widgets/gradient_mask.dart';

class HomeLayout extends ConsumerWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<ItineraryModel>> userTrips =
        ref.watch(itineraryListProvider);

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
      floatingActionButton: GestureDetector(
        onTap: () => context.pushNamed('create-itinerary'),
        child: Stack(
          children: [
            GradientMask(
              child: FloatingActionButton(
                onPressed: () {},
                elevation: 4,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.add,
                  color: colors.background,
                  size: 30,
                ),
              ),
            )
          ],
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
                        recommendedTrips: ref.watch(recommendedTripsProvider),
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
