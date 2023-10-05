import 'dart:math';

void main() {
  // Créer une liste de 10 nombres aléatoires entre 1 et 50.
  List<int> randomNumbers = generateRandomNumbers(10, 1, 50);

  // Faire une copie de la liste.
  List<int> copyOfRandomNumbers = List.from(randomNumbers);

  // Vérifier que les deux listes sont identiques.
  assertListsAreEqual(randomNumbers, copyOfRandomNumbers);

  // Calculer la moyenne de la série.
  double average = calculateAverage(randomNumbers);
  print("Moyenne : $average");

  // Calculer la médiane de la série.
  double median = calculateMedian(randomNumbers);
  print("Médiane : $median");
}

// FONCTIONS
// Génère une liste de nombres aléatoires.
List<int> generateRandomNumbers(int count, int min, int max) {
  Random rand = Random();
  List<int> numbers = [];
  for (int i = 0; i < count; i++) {
    numbers.add(min + rand.nextInt(max - min + 1));
  }
  return numbers;
}

// Vérifie que deux listes sont identiques.
void assertListsAreEqual(List<int> list1, List<int> list2) {
  assert(list1.length == list2.length);
  for (int i = 0; i < list1.length; i++) {
    assert(list1[i] == list2[i]);
  }
}

// Calcule la moyenne d'une liste de nombres.
double calculateAverage(List<int> numbers) {
  if (numbers.isEmpty) return 0;
  int sum = numbers.reduce((a, b) => a + b);
  return sum / numbers.length;
}

// Calcule la médiane d'une liste de nombres.
double calculateMedian(List<int> numbers) {
  if (numbers.isEmpty) return 0;
  numbers.sort();
  int middle = numbers.length ~/ 2;
  if (numbers.length % 2 == 0) {
    return (numbers[middle - 1] + numbers[middle]) / 2;
  } else {
    return numbers[middle].toDouble();
  }
}
