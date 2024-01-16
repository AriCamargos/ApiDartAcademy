import 'dart:convert';

import 'package:api_dart_academy/models/city.dart';
import 'package:api_dart_academy/models/telephone.dart';

class Address {
  late String street;
  late int number;
  late String zipCode;
  late Telephone telephone;
  late City city;

  Address({
    required this.street,
    required this.number,
    required this.city,
    required this.telephone,
    required this.zipCode,
  });

  Map<String, dynamic> toMap() {
    return {
      'rua': street,
      'numero': number,
      'CEP': zipCode,
      'telefone': telephone.toMap(),
      'cidade': city.toMap(),
    };
  }

  String toJson() {
    return jsonDecode(toMap() as String);
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      street: map['rua'] ?? '',
      number: map['numero'] ?? 0,
      city: City.fromMap(map['cidade'] ?? {}),
      telephone: Telephone.fromMap(map['telefone'] ?? {}),
      zipCode: map['CEP'] ?? '',
    );
  }

  factory Address.fromJson(String json) => Address.fromMap(jsonDecode(json));
}
