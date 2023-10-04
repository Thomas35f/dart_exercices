import 'city.dart';

void main() {
  final cities = [
    City('Rennes', 'Ille-et-Vilaine'),
    City('Saint-Brevin-les-Pins', 'Loire-Atlantique'),
    City('Plescop', 'Morbihan'),
  ];

  // Afficher les informations sur les villes
  for (var city in cities) {
    print(city);
  }

  // Trouver la ville avec le nom le plus long
  final longestCityName = findLongestCityName(cities);

  print('La ville avec le nom le plus long est : $longestCityName');
}
