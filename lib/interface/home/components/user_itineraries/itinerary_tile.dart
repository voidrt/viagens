import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/interface/home/components/user_itineraries/tile_image.dart';
import 'package:turismo_mobile/interface/widgets/button.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class ItineraryTile extends StatelessWidget {
  const ItineraryTile({
    super.key,
    required this.item,
    required this.height,
    required this.width,
  });

  final ItineraryModel item;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final dateStart = item.dateRange!.start;
    final dateEnd = item.dateRange!.end;
    final colors = Theme.of(context).colorScheme;

    return Container(
      height: height / 3,
      width: width,
      margin: const EdgeInsets.symmetric(
        vertical: Paddings.big - 10,
        horizontal: Paddings.big + 5,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        color: colors.onBackground,
        boxShadow: [
          BoxShadow(
            color: colors.shadow.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 3,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          TileImage(item: item),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Paddings.medium),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: Paddings.medium),
                  child: BoldButton(
                    onTap: () => context.pushNamed('create-itinerary'),
                    text: '  Ver o plano  ',
                    backgroundColor: colors.secondary,
                    padding: 15,
                    roundness: 15,
                    border: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: Paddings.big),
                  child: Text(
                    '${(dateStart.day - dateEnd.day).abs()} dias',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
