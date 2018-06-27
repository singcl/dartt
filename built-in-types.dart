num x = 1;
num xx = 4.32;

int x1 = 1;
int x2 = 0xff;
double xx1 = 3.21;
double exponents  = 1.23e23;

// String -> int
var one = int.parse('1');
assert(one == 1);


// Everything you can place in a variable is an object, and every object is an instance of a class.
// int -> String
String oneAsString = 1.toString();
assert(oneAsString == '1');

// double -> String
String piAsString = 3.14159.toStringAsFixed(2);

final List<int> a = [3,3];

var constantList = const [1, 2, 3];

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

Map<String, dynamic> arguments = {'argA': 'hello', 'argB': 42};

// Dart is type safe: it uses a combination of static type checking and runtime checks to ensure that a variable’s value always matches the variable’s static type. 
// Although types are mandatory, type annotations are optional because Dart performs type inference.

const List<int> list = [1,2,3];
var List list2 = [1,2,3];  // error
var names = List<String>(3);
names.addAll(['Seth', 'Kathy', 'Lars']);
names.add(42); // Error

// 抽象类的行为和TS抽象类行为有点类似
abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

//Generic types can save you the trouble of creating all these interfaces. 
//Instead, you can create a single interface that takes a type parameter:
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

// using typed literals
var names2 = <String>['he', 'lo', 'ok'];
var pages = <String, String>{
  'index.html': 'Homepage',
  'robots.txt': 'Hints for web robots',
  'humans.txt': 'We are people, not machines'
};

var gifs = new Map();

// Symbols
var ggg = Symbol('ssss');
