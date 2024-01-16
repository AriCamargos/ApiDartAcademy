import 'dart:convert';

import 'package:api_dart_academy/models/address.dart';
import 'package:api_dart_academy/models/courses.dart';

class Students {
  late int id;
  late String name;
  late int? age;
  late List<String> coursesName;
  late List<Courses> courses;
  late Address address;

  Students({
    required this.id,
    required this.name,
    this.age,
    required this.coursesName,
    required this.courses,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'nome': name,
      'idade': age,
      'nomeCursos': coursesName,
      'cursos': courses.map((courses) => courses.toMap()).toList(),
      'endereco': address.toMap(),
    };

    if (age != null) {
      map['idade'] = age;
    }
    return map;
  }

  String toJson(String json) {
    return jsonDecode(toMap() as String);
  }

  factory Students.fromMap(Map<String, dynamic> map) {
    return Students(
        id: map['id'],
        name: map['nome'],
        address: Address.fromMap(map['endereco']),
        age: map['idade'],
        courses: map['cursos'].map<Courses>(),
        coursesName: List.from(map['nomeCursos']));
  }

  factory Students.fromJson(String json) => Students.fromMap(jsonDecode(json));
}
