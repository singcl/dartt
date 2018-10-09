// Dart has no interface keyword. Instead, all classes implicitly define an interface. Therefore, you can implement any class.

// You can create an abstract class to be extended (or implemented) by a concrete class. Abstract classes can contain abstract methods (with empty bodies).
abstract class Describable {
  void describe();
  void describeWithEmphasis() {
    print('==========');
    describe();
    print('=========');
  }
}

class MockSpaceship implements Describable {
  describe() {}
  describeWithEmphasis() {
    //
  }
}
