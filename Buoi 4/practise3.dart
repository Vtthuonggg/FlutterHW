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
  int giaiThua6 = giaiThua(6);
  print("Giai thừa của 6: $giaiThua6");
  int intNumber = 55;
  String stringNumber = '324';
  double doubleNumber = 4.32;
  print('String to Int: ${getIntFromString(stringNumber)}');
  print('Int to String: ${getStringFromInt(intNumber)}');
  print('String to Double: ${getDoubleFromString(stringNumber)}');
  print('Double to String: ${getStringFromDouble(doubleNumber)}');
}

abstract class practise3 {
  static int aa = 1;
}

int giaiThua(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * giaiThua(n - 1);
  }
}

int getIntFromString(String input) => int.parse(input);
String getStringFromInt(int input) => input.toString();
double getDoubleFromString(String input) => double.parse(input);
String getStringFromDouble(double input) => input.toString();
