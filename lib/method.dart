void main() {

  //所有的方法是对象，一等方法对象，可以复制给Function变量
  Function function = fun;

  //这里有个主意的地方，当方法fun的参数是Function的时候，这里调用没提示报错，运行时报错
  // function();//报错，因为你fun的参数为Function没有指定Function的参数是怎样的
  function(() {});//传一个匿名方法进去就不报错了


  //typeder就可以用来解决上面的语法错误


  fun2((i, j) {
    print(i);
  });
}


//方法也是对象，一等方法对象
void fun(Function f) {
  print('fun');
}

//因为你fun的参数为Function没有指定Function的参数是怎样的，就借助typeder来解决
typedef void F(int i, int j);

void fun2(F f) {
  // f();//报错，就会编译检查提示有问题
  f(1,1);//不报错
}