class TripDestination {
  TripDestination({
    required this.destinationName,
  });

  final List<String> destinationName;

  factory TripDestination.fromJson(Map<String, dynamic> json) {
    return TripDestination(destinationName: json['name']);
  }
}
