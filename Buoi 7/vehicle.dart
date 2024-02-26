class Vehicle {
  String? _number;
  String? _brand;
  String? _color;
  Vehicle(this._number, this._brand, this._color);

  void startEngineer() {
    print("Khởi động động cơ...");
  }

  void stopEngineer() {
    print("Tắt động cơ...");
  }

  String get number => _number!;
  set number(String value) {
    _number = value;
  }

  String get brand => _brand!;
  set brand(String value) {
    _brand = value;
  }

  String get color => _color!;
  set color(String value) {
    _color = value;
  }

  @override
  String toString() {
    return 'Xe: $_number, Hãng sản xuất: $_brand, Màu xe: $_color';
  }
}

class Car extends Vehicle {
  int? _seat;
  Car(this._seat, super.number, super.brand, super.color);
  void accelerate() {
    print('Ô tô đang tăng tốc...');
  }

  void brake() {
    print("Ô tô đang dừng lại");
  }
  int? get seat = _s
}
