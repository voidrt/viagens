import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/components/cities_list.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/components/search_bar.dart';
import 'package:turismo_mobile/interface/widgets/clear_appbar.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class PlaceSearchLayout extends StatelessWidget {
  const PlaceSearchLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ClearAppBar(
        appBar: AppBar(),
        leading: IconButton(
          icon: const Icon(LineIcons.arrowLeft),
          onPressed: () => context.pop(),
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PlaceSearchBar(),
                Divider(
                  color: Theme.of(context).colorScheme.shadow,
                  indent: Paddings.big - 10,
                  endIndent: Paddings.big - 10,
                ),
                const PopularPlaces(),
              ],
            );
          },
        ),
      ),
    );
  }
}
