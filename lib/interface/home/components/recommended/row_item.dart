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
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(
            right: Paddings.kDefault,
            bottom: Paddings.medium,
          ),
          height: height / 7,
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
                Colors.black12.withOpacity(0.35),
                Colors.black12.withOpacity(0.1),
              ],
              begin: Alignment.center,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: Paddings.kDefault,
          left: Paddings.small,
          child: SizedBox(
            width: width / 4 - 5,
            child: Text(
              trip.destination[0],
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
