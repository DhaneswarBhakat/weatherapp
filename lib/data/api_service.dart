import 'package:http/http.dart';
import 'package:weatherapp/data/remote_service.dart';
import 'package:weatherapp/remote_urls.dart';

class ApiService extends RemoteService {
  @override
  Future<Response> getWeatherData(String location) async {
    Map<String, String> queryParameters = {
      'q': location,
      'appid': 'a81933865f640accec828cb65f8eec1b',
      'units': 'metric'
    };

    final response = await get(
        Uri.https(RemoteUrls.baseUrl, RemoteUrls.endPoint, queryParameters));

    return response;
  }
}