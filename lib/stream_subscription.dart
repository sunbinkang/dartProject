

import 'dart:async';
import 'dart:io';

main() {

  Stream<List<int>> openRead = new File(r'C:\Users\Administrator\Desktop\网络封装.txt').openRead();


  //多订阅模式
  var broad = openRead.asBroadcastStream();
  broad.listen((event) {
    print('1111');
  });

  broad.listen((event) {
    print('222');
  });




  var stream = Stream.fromIterable([1,2,3,4]);

  //单订阅转变成广播(多订阅)
  var b = stream.asBroadcastStream();

  b.listen((event) {
    print('222');});

  b.listen((event) {
    print('333');});



  //直接创建一个广播
  var v = StreamController.broadcast();

  v.add(1);
  v.stream.listen((event) {
    print('6666666');
  });


  b.listen((event) {
    print('888888');});

}