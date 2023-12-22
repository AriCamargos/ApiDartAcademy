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
    return {
      'id': id,
      'name': name,
      'age': age,
      'coursesName': coursesName,
      'courses': courses,
      'address': address,
    };
  }

  String toJson(String json) {
    return jsonDecode(toMap() as String);
  }

/*factory Students.fromMap(Map<String, dynamic>map){
    return Students();

  }*/
}
