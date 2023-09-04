import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/core/repository/providers/itinerary_providers.dart';
import 'package:turismo_mobile/interface/home/components/add_itinerary_text.dart';
import 'package:turismo_mobile/interface/home/components/itinerary_tile.dart';
import 'package:turismo_mobile/interface/widgets/clear_appbar.dart';

class HomeLayout extends ConsumerWidget {
  const HomeLayout({super.key});

  void _createItinerary() {
    print('to be finished');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final AsyncValue<ItineraryModel> itineraries =
        ref.watch(itineraryListProvider);

    return Scaffold(
      appBar: ClearAppBar(
        appBar: AppBar(),
        widgets: const [
          Icon(
            LineIcons.bell,
            size: 30,
          ),
        ],
        leading: IconButton(
          icon: Icon(
            LineIcons.userCircleAlt,
            size: 35,
            color: colors.shadow,
          ),
          color: colors.shadow,
          onPressed: () {
            context.goNamed('user-profile');
          },
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return itineraries.when(
              data: (data) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: true,
                      child: AddItineraryText(
                        colors: colors,
                      ),
                    ),
                    ItineraryTile(item: data),
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
      floatingActionButton: FloatingActionButton(
        onPressed: _createItinerary,
        tooltip: 'Adicionar itinerario',
        backgroundColor: colors.primary,
        foregroundColor: colors.shadow,
        child: const Icon(Icons.add),
      ),
    );
  }
}
