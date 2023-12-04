class AddressComponents {
  AddressComponents({
    required this.longName,
    required this.shortName,
    required this.types,
  });

  String longName;
  String shortName;
  List<String> types;

  factory AddressComponents.fromJson(Map<String, dynamic> json) {
    return AddressComponents(
      longName: json['long_name'],
      shortName: json['short_name'],
      types: json['types'],
    );
  }
}
