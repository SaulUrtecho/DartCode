// Dart Program in Dart to illustrate
// getters and setters
// the getters and setters manage the properties values
class Student {
  // propiedades
  String name = '';
  int age = 0;

  String get stud_name => name; // getter for obtain the student name

  int get stud_age => age; // getter for obtain the student age

  void set stud_name(String name) => this.name = name; // set for register the student name

  void set stud_age(int age) {
    if (age <= 0) {
      print("Age should be a positive number");
    } else {
      this.age = age; // if the age is greater than 0, it is storaged in the property
    }
  }
}

void main() {
  Student s1 = Student(); // create a instance from Student class
  s1.stud_name = 'saul'; // call the setter for insert the student name
  s1.stud_age = 1; // call the setter for insert the student age
  print(s1.stud_name); // print the values
  print(s1.stud_age);
}
