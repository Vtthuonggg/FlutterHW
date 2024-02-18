import 'dart:math';

void main (){
    List<int> inputs = List.generate(10,(_)=> Random().nextInt(10));
    print("Mảng: $inputs");
    
    inputs.sort();

    List<int> gtNhoNhat = inputs.sublist(0,3);
    List<int> gtLonNhat = inputs.sublist(inputs.length - 3);

    
    print("Giá trị nhỏ nhất:");
    for(int i=0; i<3;i++){
      print("GTNN top ${i+1}: ${gtNhoNhat[i]}");
    }

    print("Giá trị lớn nhất:");
    for(int i=0; i<3; i++){
      print("GTNN top ${i+1}: ${gtLonNhat[i]}");
    }
}