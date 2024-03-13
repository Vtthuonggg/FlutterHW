void printMultiplicationTables() {
  print("Multiplication Table 1:");
  for (int i = 1; i <= 9; i++) {
    for (int j = 1; j <= 9; j++) {
      print("$i * $j = ${i * j}");
    }
    print(""); // In ra dòng trống sau mỗi bảng cửu chương
  }

  print("\nMultiplication Table 2:");
  for (int i = 1; i <= 9; i++) {
    for (int j = 1; j <= 9; j++) {
      print("$i * $j = ${i * j}");
    }
    print(""); // In ra dòng trống sau mỗi bảng cửu chương
  }
}

void main() {
  printMultiplicationTables();
}
