class Device{
  final int id;
  final String name;
  final String systemName;
  final Manufacture manufacture;

  Device(this.id, this.name, this.systemName, this.manufacture);
  @override
  String toString(){
    return "Device:(id: $id, name: $name, systeam: $systemName, manufacture: $manufacture)";
  }
}
class Manufacture{
  final int id;
  final String name;

  Manufacture({required this.id, required this.name});
}

void main(){
  Manufacture samsung = Manufacture(id: 11, name: "Samsung");
  Manufacture apple = Manufacture(id: 22, name: "Apple");

  Device galaxy = Device(11, "Galaxy S23 Ultra", "Android 14", samsung);
  Device iphone = Device(22, "iPhone 16 pro max", "Ios 18", apple);

  print(galaxy);
  print(iphone);
}