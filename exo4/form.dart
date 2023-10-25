class Rectangle {
  int longueur;
  int largeur;

  Rectangle(this.longueur, this.largeur);
  // méthode qui calcul la surface du rectangle
  int surface() {
    return this.longueur * this.largeur;
  }

  // méthode qui calcul le périmètre du rectangle
  int perimetre() {
    return 2 * (this.longueur + this.largeur);
  }
}

class Square extends Rectangle {

  Square() : super(int longueur, int largeur);

  @override
  String toString() {
    return 'La ville $name est dans le département $county de la région $area';
  }
}
