// ignore_for_file: constant_identifier_names

import 'package:turismo_mobile/core/models/place_detailts/fields/place.dart';
import 'package:turismo_mobile/core/models/place_detailts/fields/status.dart';

class PlaceDetails {
  PlaceDetails({
    this.htmlAttributions,
    this.result,
    this.status,
  });

  List<dynamic>? htmlAttributions;
  CityModel? result;
  PlaceDetailsStatus? status;

  factory PlaceDetails.fromJson(Map<String, dynamic> json) {
    return PlaceDetails(
      htmlAttributions: json['html_attributions'],
      result: CityModel.fromJson(json['result']),
      status: json['status'],
    );
  }
}
