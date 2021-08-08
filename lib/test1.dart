main() {
  var name = 'alex';
  name ??= 'eric'; //当原来的变量没值就执行
  print(name);

  var a;
  var b = a ?? 'sss';
  print(b);

//  var p = Person();
//  p.run();
//  p.run1();

  var p = Person()
    ..name = '333'
    ..run1()
    ..run();
}

class Person {
  String name;

  void run() {
    print('sun');
  }

  void run1() {
    print('sun1');
  }
}
