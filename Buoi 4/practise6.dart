bool laSoNguyenTo(int number) {
  if (number < 1) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void printSoNguyenTo(int n) {
  List<int> soNguyenTo = [];
  for (int i = 2; i <= n; i++) {
    if (laSoNguyenTo(i)) {
      soNguyenTo.add(i);
    }
  }
  if (soNguyenTo.isEmpty) {
    print('Không có số nguyên tố nào trong khoảng từ 0 đến $n');
  } else {
    print('Số nguyên tố trong khoảng từ 0 đến $n là: $soNguyenTo');
  }
}

void main() {
  int n = 100;
  printSoNguyenTo(n);
}
