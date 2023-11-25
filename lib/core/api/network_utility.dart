import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

Provider autoc = Provider((ref) => NetworkUtility);

class NetworkUtility {
  static Future<String?> httpFetch(
    Uri url, {
    Map<String, String>? requestHeaders,
  }) async {
    try {
      final response = await http.get(url, headers: requestHeaders);
      if (response.statusCode == 200) return response.body;
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
