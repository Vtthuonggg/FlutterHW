import 'dart:ffi';

class Queue<T> {
  final int capacity;
  final List<T> list = <T>[];
  Queue(this.capacity);

  bool isFull() {
    return list.length == capacity;
  }

  T dequeue() {
    return list.removeAt(0);
  }

  void enqueue(T value) {
    if (isFull()) {
      throw "Queue is full";
    }
    list.add(value);
  }
}

void main() {
  Queue<int> queue = Queue(3);

  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);

  print("Full: ${queue.isFull()}");
  print(queue.dequeue());
  print(queue.dequeue());
  print(queue.dequeue());

  print('Sau khi thêm xóa phần tử, check isFull: ${queue.isFull()}');
}
