import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';

class ItineraryTile extends StatelessWidget {
  const ItineraryTile({
    super.key,
    required this.item,
  });

  final ItineraryModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(item.destination),
    );
  }
}
