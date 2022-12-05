import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'http://api.weatherapi.com/v1/current.json?key=a2e7636231114a7d8a7165619223011&q=$city&aqi=no');
    } on DioError catch (error) {
      throw Exception(
          error.response?.data['error']['message'] ?? 'Unknow Error');
    }
  }
}
