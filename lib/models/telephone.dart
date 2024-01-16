import 'dart:convert';

class Telephone {
  late int ddd;
  late String telephone;

  Telephone({
    required this.ddd,
    required this.telephone,
  });

  //Serialização
  //Método Json q eu converto em Map
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telephone,
    };
  }

  //Transforma o método Map para uma String
  String toJson() {
    //Entender esse retorno de dentro dos () para fora
    return jsonDecode(toMap() as String);
  }

  //Desserialização
  //Converte o Map retornando uma nova instância de Telefone
  factory Telephone.fromMap(Map<String, dynamic> map) {
    return Telephone(
      ddd: map['ddd'] ?? 0,
      telephone: map['telefone'] ?? 1,
    );
  }

  //Decodifica para obter os dados do mapa em Json e Crio um objeto de Telefone a partir da decodificação (a cima) transformando em um Map
  factory Telephone.fromJson(String json) =>
      Telephone.fromMap(jsonDecode(json));
}
