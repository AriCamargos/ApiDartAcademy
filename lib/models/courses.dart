import 'dart:convert';

class Courses {
  late int id;
  late String name;
  late bool isStudent;
  Courses({
    required this.id,
    required this.name,
    required this.isStudent,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': name,
      'isStudent': isStudent,
    };
  }

  String toJson() {
    return jsonDecode(toMap() as String);
  }

  factory Courses.fromMap(Map<String, dynamic> map) {
    return Courses(
      id: map['id'],
      name: map['nome'],
      isStudent: map['isAluno'],
    );
  }

  factory Courses.fromJson(String json) => Courses.fromMap(jsonDecode(json));
}
