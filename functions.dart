bool isNoob(int number) {
  return number != null;
}

bool isNoob1(int number) => number != null;

// 可选的命名参数
bool enableFlags({int blod = 1, bool hidden = false}) {
  print("Hello $blod");
  return isNoob1(blod);
}

// 可选的位置参数
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// 默认参数
void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('list:  $list');
  print('gifts: $gifts');
}

// 函数参数类型有两种：named parameter or positonal parameter
// 下面属性positonal parameter 类型
// 展示可选参数和默认参数的用法
// 怎么实现device不传取默认值，mood传值呢？？？？？？？？？？？？？？？
String say2(String from, String msg,
    [String device = 'carrier pigeon', String mood]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  return result;
}

// Dart App entry
// // Run the app like this: dart args.dart 1 test
void main(List<String> arguments) {
  print(arguments); // [1, test]
  var r = enableFlags(blod: 3);
  var r2 = say('Bob', 'Howdy');
  print(r2);
  print(r);
  print(say2('Bobody', 'gh'));
  doStuff();
}

// Dart is a lexically scoped language JS也是词法作用域语言。即函数的作用域在函数定义时候确定而不是在运行时确定。
