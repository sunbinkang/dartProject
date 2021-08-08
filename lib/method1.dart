//可选位置参数

void main() {
  fun(1, 8);
  fun1(2);

  fun2(5, t: 9, r: 96);
}

//可选位置参数：按传进来的顺序位置赋值
void fun(int i, [int j, int k]) {
  print(k);
}

//可选位置参数：可以给默认值
void fun1(int i, [int j = 1, int k = 90]) {
  print(k);
}

//可选命名参数：键值对的方式赋值
void fun2(int m, {int t, int r}) {
  print(t);
  print(r);
}

//可选命名参数：可以给默认值
void fun3(int m, {int t = 6, int r = 9}) {}
