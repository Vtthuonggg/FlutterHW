extension Number on num {
  num add(a) {
    if (a <= 0) {
      throw ArgumentError('Số truyền vào phải lớn hơn 0');
    }
    return this + a;
  }

  num subtract(a) {
    if (a <= 0) {
      throw ArgumentError('Số truyền vào phải lớn hơn 0');
    }
    return this - a;
  }

  num divide(a) {
    if (a <= 0) {
      throw ArgumentError('Số truyền vào phải lớn hơn 0');
    }
    return this / a;
  }

  num multiple(a) {
    if (a <= 0) {
      throw ArgumentError('Số truyền vào phải lớn hơn 0');
    }
    return this * a;
  }
}

void main() {
  int a = 10;
  print("add method: ${a.add(2)}");
  print("subtract method: ${a.subtract(2)}");
  print("divide method: ${a.divide(2)}");
  print("multiply method: ${a.multiple(2)}");
}
