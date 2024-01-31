import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/interface/widgets/button.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({
    super.key,
    required this.model,
  });

  final ItineraryModel? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            model.toString(),
          ),
          BoldButton(
            onTap: () {
              context.pop();
            },
            text: 'Voltar',
            border: BorderRadius.circular(10),
          )
        ],
      ),
    );
  }
}
