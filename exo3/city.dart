class City {
  final String name;
  final String county;

  City(this.name, this.county);

  @override
  String toString() {
    return '$name se situe dans le département $county';
  }
}

class CityWithArea extends City {
  final String area;

  CityWithArea(String name, String county, this.area) : super(name, county);

  @override
  String toString() {
    return 'La ville $name est dans le département $county de la région $area';
  }
}

String findLongestCityName(List<City> cities) {
  String longestName = '';
  for (var city in cities) {
    if (city.name.length > longestName.length) {
      longestName = city.name;
    }
  }
  return longestName;
}
