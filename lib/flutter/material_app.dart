import 'package:flutter/material.dart';
import 'package:flutterapp/interface.dart';

void main() {
  runApp(MyApp2());
}

//无状态的widget，setState是无法刷新界面的
class MyApp extends StatelessWidget {
  String data;

  MyApp() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      this.data = "ddddd";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: Center(
          child: Text(
            "data1911",
          ),
        ),
      ),
    );
  }
}

//有状态的widget
class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  String data = "3333";

  _MyApp2State() {
    debugPrint("0000000000000");
    //按道理不能再构造方法中setState的，因为走构造方法的时候，页面还没执行完绘制(即build都还没执行完)
    ///这是是因为采用了延时，才没报错的
    Future.delayed(Duration(seconds: 10)).then((value) {
      debugPrint("11111111111111");
      this.data = "ddddd";
      //修改状态
      setState(() {
        debugPrint("22222222222222");
        this.data = "fffff";
      });
    });
    //报错：setState() called in constructor: _MyApp2State#ad926(lifecycle state: created, no widget, not mounted)
    // setState(() {
    //   this.data = "fffff";
    // });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build--------------");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: Center(
          child: Text(
            data,
          ),
        ),
      ),
    );
  }
}

class MyApp3 extends StatefulWidget {
  @override
  _MyApp3State createState() => _MyApp3State();
}

class _MyApp3State extends State<MyApp3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: Center(
          child: Text("data123"),
        ),
      ),
    );
  }
}
