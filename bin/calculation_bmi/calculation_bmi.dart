calcularBmi({required double weight, required double height}) {
  print('O seu IMC é ${(weight / (height * height)).toStringAsFixed(2)}');
}
