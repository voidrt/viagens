import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/interface/home/components/recommended/row_item.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class RecommendedTripsRow extends StatefulWidget {
  const RecommendedTripsRow({
    super.key,
    required this.recommendedTrips,
    required this.constraints,
  });

  final List<ItineraryModel> recommendedTrips;
  final BoxConstraints constraints;

  @override
  State<RecommendedTripsRow> createState() => _RecommendedTripsRowState();
}

class _RecommendedTripsRowState extends State<RecommendedTripsRow> {
  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                Paddings.big,
                Paddings.kDefault,
                0,
                Paddings.kDefault,
              ),
              child: Text(
                'Recomendados',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            IconButton(
              onPressed: () => setState(() {}),
              icon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color: colors.shadow,
              ),
            ),
          ],
        ),
        Visibility(
          visible: false,
          child: Row(
            children: [
              const SizedBox(
                width: Paddings.big,
              ),
              ...List.generate(
                widget.recommendedTrips.length,
                (index) => TravelRowItem(
                  trip: widget.recommendedTrips[index],
                  height: widget.constraints.maxHeight,
                  width: widget.constraints.maxWidth,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
