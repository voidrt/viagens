import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/components/search_bar.dart';
import 'package:turismo_mobile/interface/widgets/custom_scaffold.dart';

class PlaceSearchLayout extends ConsumerStatefulWidget {
  const PlaceSearchLayout({super.key});

  @override
  ConsumerState<PlaceSearchLayout> createState() => _PlaceSearchLayoutState();
}

class _PlaceSearchLayoutState extends ConsumerState<PlaceSearchLayout> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: CustomScaffoldWithAppBar(
        appBarLeading: IconButton(
          icon: const Icon(LineIcons.arrowLeft),
          onPressed: () => context.pop(),
        ),
        actions: const [
          Text('Passo 1/5'),
        ],
        body: const SafeArea(
          child: SearchCity(),
        ),
      ),
    );
  }
}
