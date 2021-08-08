class A {
  a() {
    print('A 的a方法');
  }
}

class B {
  b() {}

  a() {
    print('B 的a方法');
  }
}

//被混入的类不能拥有构造函数
class C with A, B {
  void c() {}

  void a() {
    super.a();

    print("C 的a方法");
  }
}

void main() {
  var p = C();

  p.a();
  p.b();
  p.c();

}
