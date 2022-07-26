import 'dart:convert';

import 'package:weather_app_revision/model/weather_model.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app_revision/model/weathercurrent_model.dart';

class WeatherCurrentApi{
  Future<WeatherDataCurrent> getData(String latitude, String longitude) async {
    var endpoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=45865970ebbfbc127eb2a16dd7f753e7&units=metric");
    var respone = await http.get(endpoint);
    var body = jsonDecode(respone.body);
    return WeatherDataCurrent.fromJson(body);
  }
}

class WeatherApi{
  Future<WeatherData> getData(String latitude, String longitude) async {
    var endpoint = Uri.parse("https://api.openweathermap.org/data/2.5/onecall?lat=$latitude&lon=$longitude&exclude=minutly,alerts,&appid=45865970ebbfbc127eb2a16dd7f753e7&units=metric");
    var respone = await http.get(endpoint);
    var body = jsonDecode(respone.body);
    return WeatherData.fromJson(body);
  }
}