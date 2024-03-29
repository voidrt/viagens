import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/interface/home/components/recommended/row_item.dart';
import 'package:turismo_mobile/interface/widgets/divided_text.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class RecommendedTripsRow extends StatefulWidget {
  const RecommendedTripsRow({
    super.key,
    required this.recommendedTrips,
    required this.constraints,
    required this.alreadyActive,
  });

  final List<ItineraryModel> recommendedTrips;
  final BoxConstraints constraints;
  final bool alreadyActive;

  @override
  State<RecommendedTripsRow> createState() => _RecommendedTripsRowState();
}

class _RecommendedTripsRowState extends State<RecommendedTripsRow> {
  late bool isActive = widget.alreadyActive;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DividedText(
          endIndent: Paddings.big,
          constraints: widget.constraints,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: Paddings.kDefault,
                  top: Paddings.kDefault,
                  bottom: Paddings.kDefault,
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
                onPressed: () => setState(() {
                  isActive = !isActive;
                }),
                icon: Icon(
                  isActive
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  color: colors.shadow,
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Visibility(
            visible: isActive,
            child: Padding(
              padding: const EdgeInsets.only(left: Paddings.kDefault + 5),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
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
          ),
        ),
      ],
    );
  }
}
