class Character {
  final String name;

  Character(this.name);

  void printName() {
    print('O personagem escolhido foi $name !!');
  }
}

class Mario extends Character {
  Mario() : super('Mario');
}

class Luigi extends Character {
  Luigi() : super('Luigi');
}

class Peach extends Character {
  Peach() : super('Peach');
}

class Deise extends Character {
  Deise() : super('Deise');
}
