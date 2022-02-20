// https://www.educative.io/courses/learn-dart-first-step-to-flutter/qZg9YP43n4r

// When you run dart, the compiler is looking for the main function


// with null safety the following code will not work
class Person{
  String name; 
  String gender; 
  int age = 0; 
  
  walking() => print('$name is walking');
  talking() => print('$name is talking');
}

int main() {
  // Creating an object of the Person class
  var firstPerson = Person();
}

// This one will work
class Person{
  String? name; 
  String? gender; 
  int? age; 
  
  walking() => print('$name is walking');
  talking() => print('$name is talking');
}

void main() {
  // Creating an object of the Person class
  var firstPerson = Person();
}
