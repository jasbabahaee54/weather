import 'f.dart';
import 'network.dart';

const apiKey = '206d6bfa570b34ca3c41eacbc973f359';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/forecast';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper =
        NetworkHelper('$openWeatherMapURL?q=$cityName&appid=$apiKey');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getPosition();
    try {
      NetworkHelper networkHelper = NetworkHelper(
          'https://api.openweathermap.org/data/2.5/forecast?lat=${location.latitude}&lon=${location.longitude}&appid=206d6bfa570b34ca3c41eacbc973f359');

      var weatherData = await networkHelper.getData();
      return weatherData;
    } catch (e) {
      print(e);
    }
  }
}
