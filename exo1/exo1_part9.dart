//La librairie des timezones
import 'package:timezone/timezone.dart' as tz;
//La base de données des timezones
import 'package:timezone/data/latest.dart' as tz;

void main() {
  //Initialiser la base
  tz.initializeTimeZones();
  var locations = tz.timeZoneDatabase.locations;
  print(locations.length); // => 431 timezones dans la base
}
