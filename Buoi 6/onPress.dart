
void main(){
  var number = 0;
  buttonCount(number);
}

void buttonCount(int number){
  void onPressed(){
    number ++;
    print('Button pressed $number times');
  }
 onPressed(); 
}