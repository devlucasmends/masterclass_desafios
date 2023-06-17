class Cpf {
  final String cpf;

  Cpf({required this.cpf}) {
    print(validadeCpf(cpf));
  }

  bool validadeCpf(String cpf) {
    List<String> cpfDigits = [];
    cpfDigits = formatCpf(cpf);

    if (cpfDigits.length == 11) {
      if (cpfDigits.toSet().length != 1) {
        String digit10 = calcDigit(cpf: cpfDigits, indexDigit: 10);
        if (digit10 == cpfDigits[9]) {
          String digit11 = calcDigit(cpf: cpfDigits, indexDigit: 11);
          if (digit11 == cpfDigits[10]) {
            return true;
          }
          return false;
        }
        return false;
      }
    }
    return false;
  }

  List<String> formatCpf(String cpf) {
    List<String> temp = [];
    cpf = cpf.replaceAll(RegExp('[^0-9]'), '');
    temp = cpf.split('').toList();
    return temp;
  }

  String calcDigit({required List<String> cpf, required int indexDigit}) {
    List<int> temp = [];
    int index = indexDigit - 1;
    int digit = 0;

    for (int i = 0; i < index; i++) {
      temp.add(int.parse(cpf[i]) * indexDigit);
      indexDigit--;
    }

    for (int i = 0; i < temp.length; i++) {
      digit += temp[i];
    }
    digit = digit % 11;

    return (11 - digit).toString();
  }
}
