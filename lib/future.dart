import 'dart:io';

void main() {
  Future future = Future.delayed(Duration(seconds: 3));


  //then 可以得到Future的结果并且能够返回一个新的Future
  future.then((value) => {

  print(value)

  });



  File file = new File(r'C:\Users\Administrator\Desktop\网络封装.txt');
  var readAsString = file.readAsString();
  readAsString.then((String value) {
    print(value);
    return 1;
  }).then((value) => print(value));
}