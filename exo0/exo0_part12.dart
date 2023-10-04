void main() {
  String words =
      "Cat, Sunshine, Bicycle, Fish, Harmony, Dart, Pillow, Atmosphere, Whisper, Chocolate, Adventure";

  List<String> splitted = words.split(', ');
  splitted.sort((a, b) => a.length.compareTo(b.length));

  print(splitted);
}
