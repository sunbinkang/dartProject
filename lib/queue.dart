//有两个队列：事件队列 和 微任务队列
//通过Looper来提取
//从微服务中提取任务，直到将微任务队列提取完了，才会去查找另外一个队列
//在每一次处理完一个事件任务就会去微任务队列查找一次是否有任务，有就先执行微任务队列
import 'dart:io';
import 'dart:isolate';

void main() {
  var receivePort = new ReceivePort();
  receivePort.listen((message) {
    print(message);
  });
  //在微任务队列中提交一个任务
  Future.microtask(() {
    print('微任务执行');

    sleep(Duration(seconds: 10));
  });

  receivePort.sendPort.send('发送消息给消息接收者');

  Future.microtask(() {
    print('微任务执行2');
  });

  receivePort.sendPort.send('发送消息给消息接收者2');

  Future.microtask(() {
    print('微任务执行3');
  });

  receivePort.sendPort.send('发送消息给消息接收者3');

  sleep(Duration(seconds: 3));

}
