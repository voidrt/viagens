import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tripDurationProvider = ChangeNotifierProvider<TripDuration>(
  (ref) => TripDuration(duration: 1),
);

class TripDuration extends ChangeNotifier {
  TripDuration({required this.duration});

  int duration;

  void decrement() {
    duration = max(duration - 1, 1);
    notifyListeners();
  }

  void increment() {
    duration++;
    notifyListeners();
  }
}
