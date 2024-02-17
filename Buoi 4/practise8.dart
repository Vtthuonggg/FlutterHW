import 'dart:math';

int sum(List<int> input) {
  int tong = 0;
  for (int num in input) {
    tong += num;
  }
  return tong;
}

double trungBinh(List<int> input) {
  if (input.isEmpty) return 0;
  int sum = input.reduce((value, element) => value + element);
  return sum / input.length;
}

int gtLonNhat(List<int> input) {
  if (input.isEmpty) return 0;
  return input.reduce(max);
}

int gtNhoNhat(List<int> input) {
  if (input.isEmpty) return 0;
  return input.reduce(min);
}

Set<String> demSoChanLe(List<int> input) {
  int soChan = 0;
  int soLe = 0;
  for (int num in input) {
    if (num.isEven)
      soChan++;
    else
      soLe++;
  }
  return {'Số chẵn: $soChan. Số lẻ: $soLe'};
}

int soLanXuatHien(List<int> input, int giaTri) {
  int demSo = 0;
  for (int num in input) {
    if (num == giaTri) {
      demSo++;
    }
  }
  return demSo;
}

void main() {
  List<int> input = List.generate(10, (_) => Random().nextInt(10));
  Map<int, int> a = {};
  for (int giaTri in input) {
    int soLan = soLanXuatHien(input, giaTri);
    a[giaTri] = soLan;
  }
  print('Mảng: $input');
  print(
      'Giá trị trung bình: ${sum(input)}/${input.length} =  ${trungBinh(input)}');
  print('Giá trị lớn nhất: ${gtLonNhat(input)}');
  print('Giá trị nhỏ nhất: ${gtNhoNhat(input)}');
  print('Số chẵn và số lẻ: ${demSoChanLe(input)}');
  a.forEach((giaTri, soLan) {
    print('Số lần xuất hiện của phần tử $giaTri: $soLan lần');
  });
}
