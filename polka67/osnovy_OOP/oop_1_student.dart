class Student {
  String name;
  int age;
  double averagePoint;

  Student({
    required this.name,
    required this.age,
    required this.averagePoint,
  });

  void printInfo() {
    print('Студент: $name, возраст: $age, средний балл: $averagePoint');
  }

  bool isExcellent() {
    return averagePoint >= 4.5;
  }
}

void main() {
  Student student1 = Student(name: 'Алиса', age: 18, averagePoint: 4.8);
  Student student2 = Student(name: 'Максим', age: 19, averagePoint: 4.2);
  Student student3 = Student(name: 'Алина', age: 17, averagePoint: 4.5);

  List<Student> students = [student1, student2, student3];

  for (var student in students) {
    student.printInfo();
    print('Отличник: ${student.isExcellent()}\n');
  }
}