// This is where the app starts executing.
void main() {
  var number = 42; // Declare and initialize a variable.
  printInteger(number); // Call a function.
  print(sayHello("Singcl"));
  print(sayHello2("Singcl"));
}
// dart --checked hello.dart

var c = 'sss' 'ssss' 'sssssddd';
int a = 4;
double f = 3.444;
num sssss = 3;
const i = 10;
String name = 'sssss';
Function hee;

// 函数的多种写法

// 声明一个Function类型的变量 - 非箭头函数写法
Function sayHello3 = (String name) {
  var x = 4;
  return x;
};
// 声明一个Function类型的变量 - 类似js的[箭头函数]函数表达式
Function sayHello2 = (String name) => 'Hello2 $name';

// 定义一个箭头函数 - js中没有这种写法。 Js箭头函数只有上面那种写法
String sayHello(String name) => 'Hello $name!';
// Define a function.
void printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

String sayHello4(String age) => "Hello $age";
