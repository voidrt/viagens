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
    required this.constraints,
  });

  final int tripDuration;
  final ItineraryModel? model;
  final BoxConstraints constraints;

  @override
  ConsumerState<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends ConsumerState<CalendarWidget> {
  final DateTime dateNow = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  DateTime? tripStartDate;
  DateTime? tripEndDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.constraints.maxHeight / 2,
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
              rangeStartDecoration: BoxDecoration(
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
            rangeStartDay: tripStartDate,
            rangeEndDay: tripEndDate,
            onDaySelected: (selectedDay, focusedDay) {
              setState(
                () {
                  tripStartDate = selectedDay;
                  _focusedDay = focusedDay;
                  tripEndDate = tripStartDate?.add(
                    Duration(days: widget.tripDuration),
                  );
                },
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Paddings.big,
            vertical: Paddings.big,
          ),
          child: BoldButton(
            onTap: () {
              if (tripStartDate == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Selecione uma data para inicio da viagem.'),
                  ),
                );
                return null;
              }
              context.pushNamed(
                'sla',
                extra: widget.model!.copyWith(
                  dateRange: DateTimeRange(
                    start: tripStartDate!,
                    end: tripEndDate!,
                  ),
                ),
              );
            },
            text: 'Concluido',
            border: BorderRadius.circular(20),
          ),
        )
      ],
    );
  }
}
