

import 'dart:io';
import 'dart:isolate';

void main () {

  Isolate.spawn(i1, 'message');
  Isolate.spawn(i2, 'message1');
}


void i1(msg) {
  print('1');
  sleep(Duration(seconds: 3));
}

void i2(msg) {
  print('2');
  sleep(Duration(seconds: 6));
}