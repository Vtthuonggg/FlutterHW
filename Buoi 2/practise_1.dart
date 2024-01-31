void main(List<String> args) {
  String a =
      " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...";

  String a1 = a.trim();
  String a2 = a1.substring(0, a1.length - 3);
  String a3 = a2.substring(a2.length - 20, a2.length - 9);

  ///a1 = Capitalize(a1);
  a2 = a2
      .replaceFirst('đây', 'Đây')
      .replaceFirst(' của', "")
      .replaceFirst('dart', 'Dart')
      .replaceFirst('dart basics', a3.toUpperCase());

  print(a2);
}
