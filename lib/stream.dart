import 'dart:io';

main() {


  //对大文件一次读一部分，Future是一次性读完
  Stream<List<int>> openRead = new File(r'C:\Users\Administrator\Desktop\网络封装.txt').openRead();

  var dst = new File(r'C:\Users\Administrator\Desktop\网络封装1.txt');
  var openWrite = dst.openWrite();


  var listen = openRead.listen((event) {
    print('1111');

    openWrite.add(event);
  });



  // listen.onData((ev) {
  //   print('2222');
  // });

  listen.onDone(() {
    print('文件读完了');});

}