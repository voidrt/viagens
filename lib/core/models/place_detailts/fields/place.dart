import 'package:turismo_mobile/core/models/place_detailts/fields/adr_components.dart';

class CityModel {
  CityModel({
    this.addressComponents,
    this.adrAddress,
    this.formattedAddress,
    this.geometry,
  });

  List<AddressComponents>? addressComponents;
  String? adrAddress;
  String? formattedAddress;
  List<double>? geometry;

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      addressComponents: List.generate(
        json['address_components'].length,
        (index) => AddressComponents.fromJson(
          json['address_components'][index],
        ),
      ),
      adrAddress: json['adr_address'],
      formattedAddress: json['formatted_address'],
      geometry: [
        json['geometry']['location']['lat'],
        json['geometry']['location']['lng'],
      ],
    );
  }
}
