funcaoFibonacci({required int tamanhoSequencia}) {
  List<int> sequencia = [];

  if (sequencia.isEmpty) {
    sequencia.add(0);
    sequencia.add(1);
  }
  while (sequencia.length < tamanhoSequencia) {
    sequencia.add(sequencia[sequencia.length - 1] + sequencia[sequencia.length - 2]);
  }
  print(sequencia);
}
