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
