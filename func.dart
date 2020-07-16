// 要达到可选命名参数的用法，那就在定义函数的时候给参数加上 {}
void enable1Flags({bool bold, bool hidden}) => print("$bold , $hidden");
// 定义可选命名参数时增加默认值
void enable2Flags({bool bold = true, bool hidden = false}) =>
    print("$bold, $hidden");
// 可忽略的参数在函数定义时用 [] 符号指定
void enable3Flags(bool bold, [bool hidden]) => print("$bold ,$hidden");

main(List<String> args) {
  enable1Flags(bold: true, hidden: true);
  enable2Flags(bold: true);
  enable3Flags(true);
}
