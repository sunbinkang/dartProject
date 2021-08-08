//内置类型

main() {
  //数值类型 int 和 double 父类都是num  8个字节（和平台有关）
  int i = 9;
  i = 8;
  print(i.bitLength); //动态决定int的类型，按值来：i = 1占1位，9占4位

  //字符串类型
  /**
   *
   */
  String srt = "222";
  int num = 9;
  // String sr = srt + "ttt" + num + "666";
  String s = "${srt}我要${num}号"; //格式化
  print(s);

  String g = '555';

  String s1 = '\\n';
  print(s1);

  //bool

  bool r = false;
  bool g1 = true;

  /**
   * List数组
   */
  List<String> list = new List();

  List<int> list1 = [1, 2, 3, 4];
  print(list1[3]);

  //iter
  for (var o in list1) {}

  //itar
  for (var j = 0; j < list1.length; ++j) {
    var o = list1[j];
  }

  List<int> list2 = const [1, 2, 3];
  // list2.add(4);//运行报错，const修饰的是[1,2,3]这个对象，表示这个对象不可变，不能再add了；

  const List<int> list3 = [1, 2, 3, 4];
  // list3 = [1,2];报错

  /**
   * map
   */
  Map<int, int> map = {1: 1, 2: 2};
  map[5] = 100;
  print(map[5]);

  var keys = map.keys;
  keys.forEach((element) {
    print(element);
  });
}
