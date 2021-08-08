class A {
  void a() {}
}

//继承
class MyAA extends A {}

//接口，任何一个类都是一个接口，实现就要重写里面的方法
class MyA implements A {
  @override
  void a() {
    // TODO: implement a
  }
}
