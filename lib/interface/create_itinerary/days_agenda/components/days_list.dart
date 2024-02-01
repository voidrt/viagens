import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:turismo_mobile/core/providers/trip_duration/duration_provider.dart';
import 'package:turismo_mobile/interface/create_itinerary/days_agenda/components/days_list_item.dart';

class DaysAgendaList extends ConsumerWidget {
  const DaysAgendaList({
    required this.dateRange,
    required this.constraints,
    super.key,
  });

  final DateTimeRange? dateRange;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context, ref) {
    final duration = ref.watch(tripDurationProvider).duration;

    List<DateTime> days = List.generate(
      duration,
      (i) => dateRange!.start.add(
        Duration(days: i),
      ),
    );

    return ListView.builder(
      itemCount: duration,
      itemBuilder: (context, index) {
        final day = days[index];
        return DaysListItem(
          constraints: constraints,
          title: 'Dia ${days.indexOf(day) + 1} - ${day.day}/${day.month}',
        );
      },
    );
  }
}
