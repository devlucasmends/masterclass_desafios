funcFibonacci({required int sizeSequential}) {
  List<int> sequential = [];

  if (sequential.isEmpty) {
    sequential.add(0);
    sequential.add(1);
  }
  while (sequential.length < sizeSequential) {
    sequential.add(sequential[sequential.length - 1] + sequential[sequential.length - 2]);
  }
  print(sequential);
}
