# section5.dart
  // Class Person
class Person {
  String name;
  int _age;

  // Constructor using this
  Person(this.name, this._age);

  // Getter for age
  int get age => _age;

  // Setter for age
  set age(int value) {
    _age = value;
  }

  // Static variable
  static String universityName = "Sohag University";
}

// Class Employee extends Person
class Employee extends Person {
  double salary;

  // Super constructor
  Employee(String name, int age, this.salary) : super(name, age);

  // Function to show employee info
  void showInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Salary: $salary");
  }
}

// Abstract Class Skills
abstract class Skills {
  void programming();
  void communication();
}

// Class Developer extends Employee and implements Skills
class Developer extends Employee implements Skills {
  String language;

  // Constructor using this
  Developer(String name, int age, double salary, this.language)
      : super(name, age, salary);

  @override
  void programming() {
    print("$name is programming in $language.");
  }

  @override
  void communication() {
    print("$name has excellent communication skills.");
  }

  @override
  void showInfo() {
    super.showInfo();
    print("Programming Language: $language");
  }
}

void main() {
  // Create object from Developer
  Developer dev = Developer("Hamad", 23, 8000, "Dart");

  // Call methods
  dev.showInfo();
  dev.programming();
  dev.communication();

  // Print static university name
  print("University: ${Person.universityName}");
}
