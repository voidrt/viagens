class TripDestination {
  TripDestination({
    required this.destinationName,
    required this.countryCode,
  });

  final List<String> destinationName;
  final String countryCode;

  factory TripDestination.fromJson(Map<String, dynamic> json) {
    return TripDestination(
      destinationName: json['name'],
      countryCode: json['code'],
    );
  }
}
