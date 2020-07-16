class Point {
  num x, y;
  static num factor = 0;

  // 语法糖，等同于在函数体内：this.x = x;this.y = y;
  // Point(this.x, this.y);
  void printInfo() => print('($x, $y)');
  static void printZValue() => print('$factor');
}

// var p = new Point(1.0, 2.0); //new 关键字可以省略
var p1 = new Point();
var p2 = new Point();

class Vector extends Point {
  num z = 0;
  // Vector(this.x, this.y);
  @override
  void printInfo() {
    print('($x, $y, $z)');
    // super.printInfo();
  }

  // 覆写相等运算符，判断向量相等
  bool operator ==(dynamic v) => (x == v.x && y == v.y && z == v.z);
}

//Coordinate 是对 Point 的接口实现
class Coordinate implements Point {
  @override
  num x;

  @override
  num y;

  @override
  void printInfo() {
    // ignore: todo
    // TODO: implement printInfo
    print('($x,$y)');
  }
}

// Coordinate2混入，一个类里可以以非继承的方式使用其他类中的变量与方法
class Coordinate2 with Point {}

var v = new Vector();
var coordinate = Coordinate();
var coordinate2 = Coordinate2();
main() {
  print("===" * 6);
  p1.printInfo();
  p1
    ..x = 2
    ..y = 3;
  p2
    ..x = 2
    ..y = 3;
  print("p1 == p2:" + (p1 == p2).toString());
  Point.printZValue();
  print("===" * 6 + "Vector" + "===" * 6);
  v
    ..x = 1
    ..y = 2
    ..z = 3;
  Vector v1 = Vector(), v2 = Vector();
  v1
    ..x = 1
    ..y = 2
    ..z = 3;
  v2
    ..x = 1
    ..y = 2
    ..z = 3;
  v.printInfo();
  print('v1 == v2?' + (v1 == v2).toString());
  print("===" * 6);
  coordinate
    ..x = 11
    ..y = 22;
  coordinate.printInfo();
  print("===" * 6);
  coordinate2.printInfo();
  print("===" * 6);
}
