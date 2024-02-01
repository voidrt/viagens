import 'package:flutter/material.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/interface/create_itinerary/days_agenda/components/days_list.dart';
import 'package:turismo_mobile/interface/create_itinerary/days_agenda/components/text_row.dart';
import 'package:turismo_mobile/interface/widgets/custom_scaffold.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class DaysAgenda extends StatelessWidget {
  const DaysAgenda({
    super.key,
    required this.model,
  });

  final ItineraryModel? model;

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWithAppBar(
      actions: const [
        Text('Passo 3/5'),
      ],
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: Paddings.big),
            child: Column(
              children: [
                const AgendaTextRow(),
                Expanded(
                  child: DaysAgendaList(
                    constraints: constraints,
                    dateRange: model!.dateRange,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
