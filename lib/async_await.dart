

import 'dart:io';

main() {

  readFile();


}


void readFile () {
  Future<String> readAsString = new File(r'C:\Users\Administrator\Desktop\网络封装.txt').readAsString();

  readAsString.then((value) => print('3333'));

  print('333');
}

void readFile1 () async {
  String readAsString = await new File(r'C:\Users\Administrator\Desktop\网络封装.txt').readAsString();

  print('333');
}