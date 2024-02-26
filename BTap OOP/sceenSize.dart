class LopHoc {
  String tenLop;
  int soBuoiHoc;

  LopHoc(this.tenLop, this.soBuoiHoc);

  void validateSoBuoiHoc() {
    if (soBuoiHoc < 10) {
      throw Exception('Số buổi học không được nhỏ hơn 10');
    }
  }

  void updateSoBuoiHoc(LopHoc lopHocLienQuan) {
    if (tenLop == 'Flutter') {
      lopHocLienQuan.soBuoiHoc = soBuoiHoc + 5;
    } else if (tenLop == 'Android') {
      lopHocLienQuan.soBuoiHoc = soBuoiHoc + 3;
    } else if (tenLop.toLowerCase() == 'web') {
      lopHocLienQuan.soBuoiHoc = soBuoiHoc - 2;
    }
    lopHocLienQuan.validateSoBuoiHoc();
  }
}

void main() {
  // Khởi tạo các lớp học
  LopHoc flutter = LopHoc('Flutter', 10);
  LopHoc android = LopHoc('Android', 15);
  LopHoc ios = LopHoc('iOS', 18);
  LopHoc web = LopHoc('Web', 8);

  // Cập nhật số buổi học của Flutter
  flutter.soBuoiHoc = 12;
  flutter.validateSoBuoiHoc();

  // Cập nhật số buổi học của Android dựa trên Flutter
  flutter.updateSoBuoiHoc(android);

  // Cập nhật số buổi học của iOS dựa trên Android
  android.updateSoBuoiHoc(ios);

  // Cập nhật số buổi học của Web dựa trên Flutter
  flutter.updateSoBuoiHoc(web);

  // In thông tin các lớp học
  print('Flutter: ${flutter.soBuoiHoc}');
  print('Android: ${android.soBuoiHoc}');
  print('iOS: ${ios.soBuoiHoc}');
  print('Web: ${web.soBuoiHoc}');
  print(web.tenLop);
}
