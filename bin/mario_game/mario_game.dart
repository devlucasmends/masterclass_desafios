import 'dart:io';
import 'character.dart';

void runMarioGame() {
  Character player;
  bool chooseCharacter = false;

  print('ESCOLHA O SEU PERSONAGEM!!');
  print('\n1 == Mario\t2 == Luigi\n3 == Peach\t4 == Deise');

  String indexPlayer = stdin.readLineSync()!;

  while (chooseCharacter == false) {
    if (indexPlayer == '1' || indexPlayer == '2' || indexPlayer == '3' || indexPlayer == '4') {
      chooseCharacter = true;
    } else {
      print(
          '\nOPÇÃO INVALIDA, POR FAVOR DIGITE O NUMERO CORRESPONDENTE AO PERSONAGEM QUE VOCÊ QUER JOGAR!!');
      indexPlayer = stdin.readLineSync()!;
    }
  }

  if (indexPlayer == '1') {
    player = Mario();
  } else if (indexPlayer == '2') {
    player = Luigi();
  } else if (indexPlayer == '3') {
    player = Peach();
  } else {
    player = Deise();
  }

  player.printName();
}
