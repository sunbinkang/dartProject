class Point {
  //使用了下划线_Point别的地方就不能new _Point了

  //dart没有private、public

  //dart的私有属性，使用下划线
  int _x;
  int y;

  //构造方法
  Point(this._x, this.y);

  //命名构造方法，更加直观的表示这个构造方法的作用和特性
  Point.Y(this.y);

  Point.X(this._x);


  //方法参数初始化列表
  Point.fromMap(Map map)
      :_x=map["x"],
        y=map["y"];


}


//
void fun() {


}

class View {
  View(int context, int attr);

  View.a(int context) :this(context, 0); //重定向构造方法


}


class ImutablePoint {
  final int x;
  final int y;

  //常量构造方法
  const ImutablePoint(this.x, this.y); //const定义的构造函数必须要是变量为final修饰
}

void main() {
  //使用new 来创建常量构造方法的对象，就和普通的对象没有说明区别
  var p1 = new ImutablePoint(1, 1);
  var p4 = new ImutablePoint(1, 1);
  print(p1.hashCode == p4.hashCode);
  print(p1 == p4);


  //常量构造函数
  var p2 = const ImutablePoint(1, 1);
  var p3 = const ImutablePoint(1, 1);
  print(p1.hashCode == p2.hashCode);
  print(p1 == p2);
}

class Point3 {

  Point3(); //默认构造方法

  // factory Point3() {
  //   return new Point3();不能这样写，会崩
  // }


  //工厂构造方法，必须返回一个实例对象
  factory Point3.get() {
    return new Point3();
  }

  static Point3 get1() {
    return new Point3();
  }
}
