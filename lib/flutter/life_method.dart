import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isshowChild;

  _MyAppState() {
    debugPrint("_MyAppState==================");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isshowChild = true;
    debugPrint("initState==================");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    debugPrint("didChangeDependencies==================");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build==================");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              setState(() {
                isshowChild = !isshowChild;
              });
            },
            child: isshowChild ? Child() : Text("111111111"),
          ),
        ),
      ),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    debugPrint("deactivate==================");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    debugPrint("dispose==================");
  }
}

class Child extends StatefulWidget {

  @override
  _ChildState createState() => _ChildState();
}

class _ChildState extends State<Child> {

  _ChildState(){
    debugPrint("_ChildState==================child");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint("initState==================child");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    debugPrint("didChangeDependencies==================child");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build==================child");
    return Text("data111111111111111");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    debugPrint("deactivate==================child");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    debugPrint("dispose==================child");
  }
}

