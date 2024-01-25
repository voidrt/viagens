import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';
import 'package:turismo_mobile/core/providers/trip_duration/duration_provider.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';

class CalendarWidget extends ConsumerWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateTime = DateTime.now();
    final tripDuration = ref.watch(tripDurationProvider).duration;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Paddings.kDefault),
      child: ScrollableCleanCalendar(
        locale: 'pt_br',
        layout: Layout.BEAUTY,
        calendarCrossAxisSpacing: 0,
        spaceBetweenCalendars: Paddings.big,
        weekdayTextStyle: Theme.of(context).textTheme.bodyMedium,
        calendarController: CleanCalendarController(
          initialDateSelected: DateTime.now(),
          onDayTapped: (day) {},
          minDate: dateTime,
          maxDate: DateTime(
            dateTime.year + 1,
          ),
          weekdayStart: DateTime.sunday,
        ),
      ),
    );
  }
}
