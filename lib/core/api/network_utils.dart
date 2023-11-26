import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final networkServiceProvider = Provider<NetworkUtil>((_) => NetworkUtil());

class NetworkUtil {
  static const placesApiKey = 'AIzaSyCSK1yYUmFR6cI2IvzDURF9j1TRlNsCRE4';

  static const itineraryUrl =
      'https://tur.lothusgp.com.br/api/tours/get-your-guide';

  Future<String?> httpFetch(
    Uri url, [
    Map<String, String>? requestHeaders,
  ]) async {
    final response = await http.get(url, headers: requestHeaders);
    if (response.statusCode == 200) return response.body;

    return Future.error(
      Exception(
        "Ocorreu um erro na recepcao de dados: \n${response.reasonPhrase}",
      ),
    );
  }
}
