import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/core/repository/providers/itinerary_providers.dart';
import 'package:turismo_mobile/interface/home/components/add_itinerary_text.dart';
import 'package:turismo_mobile/interface/home/components/available_travel.dart';
import 'package:turismo_mobile/interface/widgets/clear_appbar.dart';

class HomeLayout extends ConsumerWidget {
  const HomeLayout({super.key});

  void _createItinerary() {
    print('to be finished');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final AsyncValue<List<ItineraryModel>> userTrips =
        ref.watch(itineraryListProvider);

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
          color: colors.shadow.withAlpha(200),
          onPressed: () {
            context.goNamed('user-profile');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createItinerary,
        tooltip: 'Adicionar itinerario',
        backgroundColor: colors.primary,
        foregroundColor: colors.shadow,
        elevation: 4,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return userTrips.when(
              data: (data) {
                return Column(
                  children: [
                    data.isEmpty
                        ? AddItineraryText(colors: colors)
                        : AvailableTravels(
                            trips: data,
                            constraints: constraints,
                          ),
                  ],
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
