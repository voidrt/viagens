import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/interface/widgets/button.dart';
import 'package:turismo_mobile/theme/padding/padding.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends ConsumerStatefulWidget {
  const CalendarWidget({
    super.key,
    required this.tripDuration,
    required this.model,
  });

  final int tripDuration;
  final ItineraryModel? model;

  @override
  ConsumerState<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends ConsumerState<CalendarWidget> {
  final DateTime dateNow = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeEndDate;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          Paddings.big,
          Paddings.kDefault,
          Paddings.big,
          Paddings.bigger,
        ),
        child: TableCalendar(
          startingDayOfWeek: StartingDayOfWeek.sunday,
          daysOfWeekHeight: Paddings.bigger,
          shouldFillViewport: true,
          //? Style
          calendarStyle: CalendarStyle(
            outsideDaysVisible: true,
            isTodayHighlighted: false,
            rangeHighlightColor: Theme.of(context).colorScheme.secondary,
            withinRangeTextStyle: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
            selectedDecoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle,
            ),
            rangeEndDecoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle,
            ),
          ),
          //? Variables
          focusedDay: _focusedDay,
          firstDay: dateNow,
          lastDay: dateNow.add(
            const Duration(days: 365),
          ),
          //? Functions
          rangeStartDay: _selectedDay,
          rangeEndDay: _rangeEndDate,
          onDaySelected: (selectedDay, focusedDay) {
            setState(
              () {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
                _rangeEndDate = _selectedDay?.add(
                  Duration(days: widget.tripDuration),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
