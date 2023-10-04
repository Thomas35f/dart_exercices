import 'dart:math';

void main() {
  // Part 1
  List<int> randomNumbers = generateRandomNumbers(10, 1, 50);
  print(randomNumbers);
  print(randomNumbers.reduce(max));

  // Part 2
  int addition = 0;
  for (int number in randomNumbers) {
    addition += number;
  }
  print(addition);

  // Part 3
  var list = new List<int>.generate(100, (i) => i + 1);
  List numberA = generateRandomNumbers(1, 1, 100);
  List numberB = generateRandomNumbers(1, 1, 100);

  if (numberA[0] == numberB[0]) {
    numberB[0]++;
  }

  int resultPart3 = generateResultPart3(list, numberA[0], numberB[0]);
  print("Part 3 result : $resultPart3");

  // Part 4 > Pass

  // Part 5
  String palindrom = "Engage le jeu que je le gagne";
  bool isPalindrom = isPalindrome(palindrom);
  print(isPalindrom);

  // Part 6
  int min6 = 1;
  int max6 = 99;
  Random rnd = new Random();
  int r = min6 + rnd.nextInt(max6 - min6);
  int resultPart6 = generateResultPart6(r);
  print(resultPart6);
}

List<int> generateRandomNumbers(int count, int min, int max) {
  Random rand = Random();
  List<int> numbers = [];
  for (int i = 0; i < count; i++) {
    numbers.add(min + rand.nextInt(max - min + 1));
  }
  return numbers;
}

// Part 3
int generateResultPart3(List numbers, int min, int max) {
  int sum = 0;

  for (int number in numbers) {
    if (number >= min && number <= max) {
      sum += number;
    }
  }

  return sum;
}

// Part 5
bool isPalindrome(String str) {
  String reversed = str.split('').reversed.join('');
  return str == reversed;
}

// Part 6
int generateResultPart6(int base) {
  int min = 1;
  int max = 99;

  int attempts = 0;
  bool founded = false;

  while (!founded) {
    Random rnd = new Random();
    int r = min + rnd.nextInt(max - min);

    if (base == r) {
      founded = !founded;
    }

    attempts++;
  }

  return attempts;
}
