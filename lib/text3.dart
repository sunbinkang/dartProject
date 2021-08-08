//操作符

main() {

  num u = 7;

  //类型转换
  //num 转换成 int  dart中没有instanceof关键字
  int i = u as int;

  Object i1 = 9;
  print(i1 is int);
  print(i1 is! int);

  //赋值操作符
  String j;
  //安全操作符，安全赋值 如果j有值，就当做不存在，j没值就会赋值456
  j ??= "456";

  /**
   * 条件表达式 ?? 的意思就是当前一个表达式j不为null，就取j赋值给v,否则就取后面的“789”
   */
  var v = j ?? "789";
  print(v);


  //级联操作符
  new Builder()..b()..a();

  //安全操作符   就是在str 为null的时候调用String的方法的时候也不会报空指针异常
  //NoSuchMethodError: The getter 'length' was called on null.不加？的结果
  
  String str = null;

  print(str?.length);

}

class Builder {

  void a() {
    print('a');
  }

  void b() {
    print('b');
  }
}