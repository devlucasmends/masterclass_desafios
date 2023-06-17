import 'dart:math';

void main(List<String> args) {
  String text = 'LOVE';
  List key = generateKey(text);
  print(text.length);

  print(String.fromCharCode(72));
}

List<String> generateKey(String text) {
  for (int i = 0; i < text.length; i++) {
    // key.add(Random().nextInt(12).toInt());
  }
  return [];
}
