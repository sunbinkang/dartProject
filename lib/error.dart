void main() {
  //介绍catch的参数
  try {
    test();
  } catch (e) {//e变量就是抛出的异常对象
    print(e.runtimeType);
  }

  try {
    test();
  } catch (e,s) {//e变量就是抛出的异常对象， s就是发生的异常的堆栈信息
    print(e);
    print(s);
  }


  //根据不同的异常处理
  try {
    test1();
  } on Exception catch (e,s) {
    print("Exception");
  } on int catch (e,s) {
    print("int");
  } on String catch (e,s) {
    print("String");
  } on Function catch (e,s) {
    e();
  }
}

//异常处理
void test() {
  throw new Exception("111");
}

void test1() {
  throw tese;//一切皆可抛
}

void tese() {
  print('111111111');
}
