import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class DaysListItem extends StatefulWidget {
  const DaysListItem({
    super.key,
    required this.constraints,
    required this.title,
  });

  final BoxConstraints constraints;
  final String title;

  @override
  State<DaysListItem> createState() => _DaysListItemState();
}

class _DaysListItemState extends State<DaysListItem> {
  final String startingTime = '8:00';
  final String endingTime = '18:00';
  RangeValues values = const RangeValues(8, 18);

  @override
  Widget build(BuildContext context) {
    RangeLabels timestamps = RangeLabels(
      values.start.round().toString(),
      values.end.round().toString(),
    );

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: Paddings.small,
      ),
      padding: const EdgeInsets.all(Paddings.small),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            '$startingTime - $endingTime',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          RangeSlider(
            values: values,
            labels: timestamps,
            max: 24,
            divisions: 24,
            min: 1,
            onChanged: (userInput) {
              setState(
                () {
                  values = userInput;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
