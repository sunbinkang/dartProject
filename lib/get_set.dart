class Point {
  int _x;
  int _y;

  //这里的x是方法名
  int get x {
    return 111;
  }

  void set x(int i) {}

  Point operator +(Point index) {
    var point = Point();
    point._x = _x + index._x;
    return point;
  }
}

void main() {
  var point = Point();

  print(point.x);

  point._x = 10;

  var p1 = Point();
  p1._x = 10;
  var p2 = Point();
  p2._x = 20;

  // + 运算符重载
  var p3 = p1 + p2;
  print(p3._x);
}
