void main() {
  List<int> numbers = List.generate(101, (index) => index);
  List<int> soLe = numbers.where((number) => number % 2 != 0).toList();
  print('Các số lẻ: $soLe');
  List<int> soChan = numbers.where((number) => number % 2 == 0).toList();
  print('Các số chẵn: $soChan');
  if (0 % 2 == 0) {
    print('Số 0 là số chẵn');
  } else {
    print('Số 0 là số lẻ');
  }
}
