import 'package:timezone/timezone.dart';

void main() {
  //Initialiser la base
  tz.initializeTimeZones();
  var locations = tz.timeZoneDatabase.locations;
  print(locations.length); // => 431 timezones dans la base
}
