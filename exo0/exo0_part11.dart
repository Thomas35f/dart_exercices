void main() {
  String emails =
      "randomemail1@example.com, emailaddress2@gmail.com, user3@hotmail.com, myemail4@yahoo.com, randomuser5@outlook.com, email6@gmail.com, user7@yahoo.com, myemailaddress8@hotmail.com, randomuser9@outlook.com, email10@yahoo.com";

  List<String> splitted = emails.split(', ');
  // print(splitted);
  // var emailSplitted;
  // splitted.forEach((element) => List<String> emailSplitted = element.split('@'););
  Map<String, int> stats = {};

  for (String email in splitted) {
    List<String> emailSplitted = email.split('@');
    String host = emailSplitted[1];
    stats[host] = (stats[host] ?? 0) + 1;
  }

  print(stats);
}
