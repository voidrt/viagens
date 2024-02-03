import 'package:flutter/material.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class DurationSlider extends StatefulWidget {
  const DurationSlider({super.key});

  @override
  State<DurationSlider> createState() => _DurationSliderState();
}

class _DurationSliderState extends State<DurationSlider> {
  RangeValues values = const RangeValues(8, 18);
  @override
  Widget build(BuildContext context) {
    RangeLabels timestamps = RangeLabels(
      values.start.round().toString(),
      values.end.round().toString(),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Paddings.small,
      ),
      child: RangeSlider(
        values: values,
        labels: timestamps,
        max: 24,
        divisions: 24,
        onChanged: (userInput) {
          setState(
            () {
              values = userInput;
            },
          );
        },
      ),
    );
  }
}
