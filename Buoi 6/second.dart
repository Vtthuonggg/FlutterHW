import'dart:io';

void timerPeriodic({
    required int second, required Function(int) callback
}){
int elapedTime = 0;

while(true){
    sleep(Duration(seconds: second));
    elapedTime += second;
    callback(elapedTime);
}
}
void main() {
    timerPeriodic(second: 1,
     callback:(elapsedTime){
         print("$elapsedTime seconds have passed.");
     });
}