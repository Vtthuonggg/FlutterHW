import 'dart:math';

class Class {
  String name;
  List<Student> students = [];
  Class(this.name);
}

class Student {
  String name;
  Student(this.name);
}

class BuildFeature {
  String name;
  BuildFeature(this.name);
}

void addStudentsToClass(Class lopHoc, List<String> studentNames) {
  studentNames.forEach((name) {
    lopHoc.students.add(Student(name));
  });
}

int remainMembers(Class lopHoc, int totalStudents) {
  return totalStudents - lopHoc.students.length;
}

void assignRemainingStudents(Class lopHoc, int remaining) {
  Random random = Random();
  List<String> forbiddenNames = [];
  switch (lopHoc.name) {
    case "Flutter":
      forbiddenNames.addAll(["C", "D", "E", "F"]);
      break;
    case "Android":
      forbiddenNames.addAll(["A", "E", "F"]);
      break;
    case "Ios":
      forbiddenNames.addAll(["A", "B", "C"]);
      break;
    case "Web":
      forbiddenNames.addAll(["A", "B", "C", "C", "D", "E"]);
      break;
    default:
      break;
  }

  for (int i = 0; i < remaining; i++) {
    String name;
    do {
      name = String.fromCharCode(72 + random.nextInt(26));
    } while (lopHoc.students.any((student) => student.name == name) ||
        forbiddenNames.contains(name));
    lopHoc.students.add(Student(name));
  }
}

void printClassMembers(Class lopHoc) {
  print("${lopHoc.name}:");
  lopHoc.students.forEach((student) {
    print("-${student.name}");
  });
}

void main() {
  Class flutter = Class("Flutter");
  Class android = Class("Android");
  Class ios = Class("Ios");
  Class web = Class("Web");

  addStudentsToClass(flutter, ["A", "B"]);
  addStudentsToClass(android, ["B", "C", "D"]);
  addStudentsToClass(ios, ["D", "E", "F"]);
  addStudentsToClass(web, ["F"]);

  print("Số thành viên còn thiếu của các lớp: ");
  print("Flutter: Thiếu ${remainMembers(flutter, 11)} trên tổng 11");
  print("Android: Thiếu ${remainMembers(android, 12)} trên tổng 12");
  print("Ios: Thiếu ${remainMembers(ios, 13)} trên tổng 13");
  print("Web: Thiếu ${remainMembers(web, 14)} trên tổng 14");

  assignRemainingStudents(flutter, remainMembers(flutter, 11));
  assignRemainingStudents(android, remainMembers(android, 12));
  assignRemainingStudents(ios, remainMembers(ios, 13));
  assignRemainingStudents(web, remainMembers(web, 14));

  print("\nDanh sách sinh viên trong mỗi lớp sau khi được thêm vào:");
  printClassMembers(flutter);
  printClassMembers(android);
  printClassMembers(ios);
  printClassMembers(web);
}
