import 'dart:math';

void main(){
final numbers = List.generate(10, (index){
  final random  = Random();
  return random.nextInt(100);
});

print('Cho mảng: $numbers');

numbers.sort();
print('Sắp xếp theo thứ tự tăng dần: $numbers');
}