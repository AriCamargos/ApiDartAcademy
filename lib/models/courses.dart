import 'dart:convert';

class Courses {
  late int id;
  late String name;
  late bool isStudent;
  late List<String> nameCourses;
  Courses({
    required this.id,
    required this.name,
    required this.isStudent,
    required this.nameCourses,
  });

  Map<String, dynamic>toMap(){
    return {
    'id': id,
    'nome': name,
    'isStudent': isStudent,
    'nameCourses': nameCourses,
    };
  }

  String toJson(){
    return jsonDecode(toMap() as String);
  }


}
