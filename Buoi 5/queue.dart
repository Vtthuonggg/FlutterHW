class Queue{
  final int capacity;
  final List<String> list = <String>[];
  Queue(this.capacity);

  bool isEmpty() => list.isEmpty;

  bool isFull() => list.length == capacity;

  String dequeue(){
    if (isEmpty()) {
      throw "Queue is empty";
    }
    return list.removeAt(0);
  }
  void enqueue(String value){
    if (isFull()) {
      throw "Queue is full";
    }
    list.add(value);
  }
}
void main(){
  Queue queue = Queue(3);

  print("Empty: ${queue.isEmpty()}");
  queue.enqueue("A");
  queue.enqueue("B");
  queue.enqueue("C");

  print("Full: ${queue.isFull()}");
  print(queue.dequeue());
  print(queue.dequeue());
  print(queue.dequeue());

  print('Sau khi thêm xóa phần tử, check isFull: ${queue.isFull()}');

}