void hoanDoiViTri<T>(List<T> list, int index1, int index2) {
  if (index1 < 0 ||
      index1 >= list.length ||
      index2 < 0 ||
      index2 >= list.length) {
    throw ArgumentError("Index out of rang");
  }
  if (index1 == index2) return;
  T temp = list[index1];
  list[index1] = list[index2];
  list[index2] = temp;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Before swap: $numbers");
  hoanDoiViTri(numbers, 1, 4);
  print("After swap: $numbers");
}
