import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class TileImage extends StatelessWidget {
  const TileImage({
    super.key,
    required this.item,
  });

  final ItineraryModel item;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Expanded(
      child: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(13),
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.black12.withOpacity(0.4),
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  item.image ??
                      'https://www.vamostrilhar.com.br/content/uploads/2017/09/Conhe%C3%A7a-tudo-sobre-as-Cachoeiras-Alm%C3%A9cegas-1-e-2-Chapada-dos-Veadeiros-GO-Vamos-Trilhar-1024x768.jpg',
                ),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(13),
              ),
            ),
          ),
          Positioned(
            top: Paddings.kDefault,
            left: Paddings.big,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.destination.destinationName[0],
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: colors.onBackground, fontWeight: FontWeight.bold),
                ),
                Text(
                  item.destination.destinationName[1],
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: colors.onBackground, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: Paddings.kDefault,
            left: Paddings.big,
            child: Text(
              DateFormat.yMMMd().format(item.dateRange.start),
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: colors.background,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
