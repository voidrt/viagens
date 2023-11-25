import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/layout/search_bar.dart';
import 'package:turismo_mobile/interface/widgets/clear_appbar.dart';

class PlaceSearchLayout extends ConsumerStatefulWidget {
  const PlaceSearchLayout({super.key});

  @override
  ConsumerState<PlaceSearchLayout> createState() => _PlaceSearchLayoutState();
}

class _PlaceSearchLayoutState extends ConsumerState<PlaceSearchLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ClearAppBar(
        appBar: AppBar(),
        leading: IconButton(
          icon: const Icon(LineIcons.arrowLeft),
          onPressed: () => context.pop(),
        ),
        widgets: [
          IconButton(
            onPressed: () => context.pushNamed('trip-duration'),
            icon: const Icon(
              LineIcons.check,
            ),
          ),
        ],
      ),
      body: const SafeArea(
        child: SearchCity(),
      ),
    );
  }
}
