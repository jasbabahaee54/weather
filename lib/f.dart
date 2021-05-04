import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
// the methods with async and await return future objects so the data type in these cases should be future
  Future<void> getPosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    longitude = position.longitude;
    latitude = position.latitude;
  }
}
