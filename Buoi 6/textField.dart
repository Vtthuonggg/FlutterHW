textField(
  String text, {
  Function(String)? onChanged,
}) {
  if (onChanged != null) {
    final result = 'Hello $text';
    onChanged(result);
  }
}

void main() {
  textField('World', onChanged: (result) {
    print("Received result in main: $result");
  });
}

// Người dùng nhập dữ liệu từ bàn phím ("World")
// Hàm 'textField' được gọi trong main với đối số là chuỗi "World"
// Trong 'textField', chuỗi "Hello World" được tạo và gọi hàm "onChanged" với giá trị này
// Hàm 'onChanged' trong main nhận giá trị và in ra màn hình