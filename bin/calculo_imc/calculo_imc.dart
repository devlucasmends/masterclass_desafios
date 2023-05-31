calcularImc({required double peso, required double altura}) {
  print('O seu IMC é ${(peso / (altura * altura)).toStringAsFixed(2)}');
}
