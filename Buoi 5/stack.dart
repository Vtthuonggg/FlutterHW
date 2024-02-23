class Stack{
  final int capacity;
  final List<String> list = <String>[];

  Stack(this.capacity);

  bool isEmpty() => list.isEmpty;
  bool isFull() => list.length == capacity;

  String pop(){
    if (isEmpty()) {
      throw "Stack is empty";
    }
    return list.removeLast();
  }
  void push(String value){
    if (isFull()) {
      throw "Stack is full";
    }
    list.add(value);
  }
}
void main(){
  Stack stack = Stack(3);

  print("Empty: ${stack.isEmpty()}");
  stack.push("A");
  stack.push("B");
  stack.push("C");

  print("Full: ${stack.isFull()}");
  print(stack.pop());
  print(stack.pop());
  

  print('Sau khi thêm xóa phần tử, check isFull: ${stack.isFull()}');
}