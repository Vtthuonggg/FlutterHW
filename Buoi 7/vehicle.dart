class Vehicle {
  String number;
  String brand;
  String color;
  Vehicle(this.number, this.brand, this.color);

  void startEngineer() {
    print("Khởi động động cơ...");
  }

  void stopEngineer() {
    print("Tắt động cơ...");
  }

  @override
  String toString() {
    return 'Xe: $number, Hãng sản xuất: $brand, Màu xe: $color';
  }
}

class Car extends Vehicle {
  int seat;
  Car(super.number, super.brand, super.color, this.seat);
  void accelerate() {
    print('Ô tô đang tăng tốc...');
  }

  void brake() {
    print("Ô tô đang dừng lại");
  }

  @override
  String toString() {
    return super.toString() + ', số chỗ ngồi: $seat';
  }
}

class Motorbike extends Vehicle {
  int dungTich;
  Motorbike(super.number, super.brand, super.color, this.dungTich);

  void accelerate() {
    print("Xe máy đang tăng tốc");
  }

  void brake() {
    print("Xe máy đang dừng lại");
  }

  @override
  String toString() {
    return super.toString() + ', dung tích xi lanh: $dungTich';
  }
}

void main() {
  Car car = Car("15B2-23456", 'Audi', "Đen", 4);
  print("Xe: ${car.brand} - Biển số: ${car.number} - Màu ${car.color}");
  car.startEngineer();
  car.accelerate();
  car.brake();
  car.stopEngineer();
  print('---------------------------');

  Motorbike moto = Motorbike("30B1-12793", "Yamahaha", "Red", 150);
  print("Xe: ${moto.brand} - Biển số: ${moto.number} - Màu ${moto.color}"
      "- Dung tích: ${moto.dungTich}");
  moto.startEngineer();
  moto.accelerate();
  moto.brake();
  moto.stopEngineer();
}
