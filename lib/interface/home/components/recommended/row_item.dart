import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class TravelRowItem extends StatelessWidget {
  const TravelRowItem({
    super.key,
    required this.trip,
    required this.height,
    required this.width,
  });

  final ItineraryModel trip;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: Paddings.kDefault,
        bottom: Paddings.medium,
      ),
      height: height / 6,
      width: width / 4,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(trip.image ??
              'https://upload.wikimedia.org/wikipedia/commons/1/1b/Bueno_Brand%C3%A3o.JPG'),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(13),
        ),
      ),
      foregroundDecoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(13),
        ),
        gradient: LinearGradient(
          colors: [
            Colors.black12.withOpacity(0.5),
            Colors.black12.withOpacity(0.2),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topCenter,
        ),
      ),
    );
  }
}
