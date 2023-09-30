import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_models.dart';

class WeatherService {
  Future<WeatherModel> getWeather({required String cityName}) async {
    String baseUrl = 'http://api.weatherapi.com';
    String apiKey = 'e504337222444a7498f81133221612';
    Uri url =
        Uri.parse('$baseUrl/v1/forecast.json?key=$apiKey&q=$cityName&days=7');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    WeatherModel weatherModel = WeatherModel.fromjson(data);
    return weatherModel;
  }
}