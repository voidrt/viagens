import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/core/repository/providers/itinerary_providers.dart';
import 'package:turismo_mobile/interface/create_itinerary/trip_duration/home/layout/available_travels.dart';
import 'package:turismo_mobile/interface/home/components/user_itineraries/add_itinerary_text.dart';

import 'package:turismo_mobile/interface/widgets/clear_appbar.dart';

class HomeLayout extends ConsumerWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<ItineraryModel>> userTrips =
        ref.watch(itineraryListProvider);

    final ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: ClearAppBar(
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
        tooltip: 'Adicionar itinerario',
        backgroundColor: colors.secondary,
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
