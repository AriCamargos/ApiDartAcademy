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
    return jsonDecode(toMap() as String); //Entender esse retorno de dentro dos () para fora
  }

  //Desserialização
  //Converte o Map retornando uma nova instância de Telefone
  factory Telephone.fromMap(Map<String, dynamic> map) {
    return Telephone(
      ddd: map['ddd'],
      telephone: map['telephone'],
    );
  }
  
  
  factory Telephone.fromJson(String json) {
    final jsonMap = jsonDecode(json); //Decodifica para obter os dados do mapa em Json
    return Telephone.fromMap(jsonMap); //Crio um objeto de Telefone a partir da decodificação (a cima) transformando em um Map
  }
}
