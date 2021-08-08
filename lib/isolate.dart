import 'dart:io';
import 'dart:isolate';


//主isolate
void main() {

  var receivePort = new ReceivePort();
  Isolate.spawn(entryPoint, receivePort.sendPort);

  receivePort.listen((message) {
    if(message is SendPort) {
      message.send("222222");
    } else {
      print(message);
    }
  });


  receivePort.sendPort.send("111111");
  print('主isolate');
}

//子isolate  和主isolate是异步的
void entryPoint(SendPort message) {

  message.send("message");
  sleep(Duration(seconds: 6));


  var receivePort = new ReceivePort();

  message.send(receivePort.sendPort);

  receivePort.listen((message) {
    print('333333');
  });

}
