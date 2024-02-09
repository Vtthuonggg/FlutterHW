void main(List<String> args) {
  int nonNullableInt = 5;
  int? nullableInt = null;

  double nonNullableDouble = 12.44;
  double? nullableDouble = null;

  String nonNullableStr = 'Hello';
  String? nullableStr = null;

  dynamic a = "acbd";
  var b = 8;

  int c = 3;
  final double d = 22;

  late int e;
  const double f = 4.24324;
  print(a);
}

abstract class practise3 {
  static int aa = 1;
}
