class Spacecraft {
  String name;
  DateTime launchDate;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  // redirecting constructor
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear => launchDate?.year; // read-only non-final property

  // Method.
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

// inheritance
class Orbiter extends Spacecraft {
  num altitute;
  Orbiter(String name, DateTime launchDate, this.altitute)
      : super(name, launchDate);
}

/* 
和上面Orbiter一样的效果
class Orbiter extends Spacecraft {
  num altitute;
  Orbiter(String name, DateTime launchDate, num altitute)
      : super(name, launchDate) {
    this.altitute = altitute;
  }
} */

// Mixins
abstract class Piloted {
  int astronauts = 1;
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

// 继承一个类 再混入一个符合约定条件的混合类 ，也可以不继承直接混合
class PilotedCraft extends Spacecraft with Piloted {
  String hello = 'hello';
  PilotedCraft(String name, DateTime dateTime) : super(name, dateTime);
}

// main
void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1997, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

  var inheritance = Orbiter('singcl', DateTime(2000, 1, 1), 33);
  inheritance.describe();
}
