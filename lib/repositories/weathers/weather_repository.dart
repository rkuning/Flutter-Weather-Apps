import 'dart:convert';
import 'package:wthrapp/models/weathers/current_weather_model.dart';
import 'package:http/http.dart' as http;
import 'package:wthrapp/models/weathers/hourly_weather_model.dart';

const baseUrl = 'https://api.openweathermap.org';
const apiKey = 'bd4824d9ddd08b7ed03b9712fec24ff9';
const units = 'metric';
final locationUrl = (city) => '$baseUrl/geo/1.0/direct?q=${city}&appid=$apiKey';
final currentWeatherUrl = (lat, lon) =>
    '$baseUrl/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=$units';

final hourlyWeatherUrl =
    (lat, lon) => '$baseUrl/data/2.5/forecast?lat=$lat&lon=$lon&appid=$apiKey';

class WeatherRepository {
  final http.Client httpClient;
  WeatherRepository({required this.httpClient}) : assert(httpClient != null);

  Future<List> getLatitudeLongitude(String city) async {
    final response = await httpClient.get(Uri.parse(locationUrl(city)));
    if (response.statusCode == 200) {
      final cities = jsonDecode(response.body) as List;
      return cities;
    } else {
      throw Exception('Error getting latitude longitude from : $city');
    }
  }

  Future<CurrentWeatherModel> getCurrentWeather(String city) async {
    final cities = await getLatitudeLongitude(city);
    final lat = (cities.first)["lat"];
    final lon = (cities.first)["lon"];
    final response =
        await httpClient.get(Uri.parse(currentWeatherUrl(lat, lon)));
    if (response.statusCode != 200) {
      throw Exception('Error getting current weather from the location.');
    }
    final currentWeatherJson = jsonDecode(response.body);
    return CurrentWeatherModel.fromJson(currentWeatherJson);
  }

  Future<HourlyWeatherModel> getHourlyWeather(String city) async {
    final cities = await getLatitudeLongitude(city);
    final lat = (cities.first)["lat"];
    final lon = (cities.first)["lon"];
    final response =
        await httpClient.get(Uri.parse(hourlyWeatherUrl(lat, lon)));
    if (response.statusCode != 200) {
      throw Exception(
          'Error getting hourly weather forcast from the location.');
    }
    final hourlyWeatherJson = jsonDecode(response.body);
    return HourlyWeatherModel.fromJson(hourlyWeatherJson);
  }
}
