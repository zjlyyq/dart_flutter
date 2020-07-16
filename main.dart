main() {
  var num = 1;
  int num2 = 2;
  String s = "Hello";
  print(s);
  print(num);
  print(num2);
  print(1.23e1);
  if (num2 == 2) {
    print(num2);
  }
  // var v =
  List l = new List();
  l.add(1);
  l.add("string");
  l.add(true);
  print(l);
  l.forEach((element) => {print(element)});

  Map map = new Map();
  map['name'] = "zjl";
  map[1] = "int";
  print(map);
  // List strs = <String>[];
  // strs.add(1); //编译阶段会报错，但是代码提示器没有报错
  // print(strs);

  Map map2 = new Map<String, String>();
  map2['name'] = "zjl";
  map2["1"] = "int";
  print(map2);
}
