import 'dart:convert';

class City {
  late int id;
  late String name;

  City({
    required this.id,
    required this.name,
  });

  //Serialização
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  String toJson() {
    return jsonEncode(toMap());
  }

//Desserialização
  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      id: map['id'],
      name: map['name'],
    );
  }

  factory City.fromJson(String json) {
    final jsonMap = jsonDecode(json);
    return City.fromMap(jsonMap);
  }
}
