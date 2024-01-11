import 'package:flutter/material.dart';

class DurationPickerBar extends StatelessWidget {
  const DurationPickerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const Row(
        children: [],
      ),
    );
  }
}
