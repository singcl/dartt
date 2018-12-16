class Person {
  String firstName = 'singcl';

  // unnamed, no-argument constructor
  // Person();

  Person.fromJson(Map data) {
    print("in Person");
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  Employee.xxx(Map data) : super.fromJson(data) {
    print("in Employee");
  }
}

void main(List<String> args) {
  var emp = new Employee.xxx({});
  // Prints:
  // in Person
  // in Employee
  print(emp.firstName);

  if (emp is Person) {
    // Type check
    emp.firstName = "Bob";
  }

  (emp as Person).firstName = "Bob";
  print(emp.firstName);
}
