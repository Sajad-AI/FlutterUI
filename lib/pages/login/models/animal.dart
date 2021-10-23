abstract class Animal {
  late int age;
  late String name;

  // no method body means you're defining an abstract method
  // abstract methods must be overridden in implementation classes
  void talk();

  // abstract classes _can_ implement some functionality.
  // when the method functionality is written on the abstract class,
  // the implementation subclasses don't have to override it.
  void growl() => print('grrrrr');
}