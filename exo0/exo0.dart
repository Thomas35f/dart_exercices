void main() {
  // Déclarer une variable number de type int et lui assigner la valeur 42.
  int number = 42;
  Type type1 = number.runtimeType;

  // Que vaut number/5 ? Quel est son type ?
  double result = number / 5; // Le résultat est 8.4 et le type est double.
  Type type2 = result.runtimeType;

  // Déclarer une variable text de type String et lui assigner la valeur "Quelle est votre réponse ?".
  String text = "Quelle est votre réponse ?";

  // Convertir number en double et préserver le résultat dans une nouvelle variable decimalNumber.
  double decimalNumber = number.toDouble();

  // Concaténer text avec la représentation en chaîne de caractères de decimalNumber
  // et le préserver dans une nouvelle variable combinedText.
  String combinedText = text + ' ' + decimalNumber.toString();
  Type type3 = combinedText.runtimeType;

  double part6 = number / 11;

  int part7 = number ~/ 11;

  String part8 = part6.toStringAsFixed(3);

  // Afficher les résultats.
  print("number: $number ($type1)");
  print("result: $result ($type2)");
  print("decimalNumber: $decimalNumber");
  print("combinedText: $combinedText ($type3)");
  print("$part6");
  print("$part7");
  print("$part8");
  print("////////");

  // Part 9 : Afficher combinedText avec tous les caractères alphabétiques en majuscules (QUELLE EST VOTRE RÉPONSE ? 42.0) et la taille de la chaîne. Afficher uniquement la réponse à la question (chaîne derriere le point d'interrogation).
  // Afficher combinedText avec tous les caractères alphabétiques en majuscules
  // et la taille de la chaîne.
  String upperCaseText = combinedText.toUpperCase();
  int stringLength = combinedText.length;

  print("combinedText en majuscules : $upperCaseText");
  print("Taille de la chaîne : $stringLength");

  // Trouver la réponse à la question (chaîne derrière le point d'interrogation).
  int questionMarkIndex = combinedText.indexOf("?");
  if (questionMarkIndex != -1 && questionMarkIndex < combinedText.length - 1) {
    String answer = combinedText.substring(questionMarkIndex + 2);
    print("Réponse à la question : $answer");
  } else {
    print("Aucune réponse trouvée.");
  }

}
