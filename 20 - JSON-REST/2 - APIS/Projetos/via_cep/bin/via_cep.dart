/* 
  Biblioteca HTTP: https://pub.dev/packages/http
  VIACEP API: https://viacep.com.br/

*/
import 'dart:convert';

import 'package:http/http.dart' as http;

main() async {
  String api = 'https://viacep.com.br/ws/01001000/json/';
  Uri url = Uri.parse(api);
  /* 
  {
  "cep": "01001-000",
  "logradouro": "Praça da Sé",
  "complemento": "lado ímpar",
  "bairro": "Sé",
  "localidade": "São Paulo",
  "uf": "SP",
  "ibge": "3550308",
  "gia": "1004",
  "ddd": "11",
  "siafi": "7107"
} 
*/
  try {
    final response = await http.get(url);
    // print('STATUS:  ${response.statusCode}');
    // print('STATUS:  ${response.body}\n');
    //DECODE
    if (response.statusCode == 200) {
      Map<String, dynamic> parsedJson = jsonDecode(response.body);

      CEP cep = CEP.fromJson(parsedJson);
      print('parsedJson: $parsedJson');
      print('OBJETO> ${cep.localidade}');

      //ENCODE
      Map<String, dynamic> map = cep.toJson();
      String? toJson = jsonEncode(map);
      print('toJson: $toJson');
    } else {
      throw Exception('Erro ao obter o CEP: \n ${response.statusCode}');
    }
  } catch (err) {
    print(err);
  }
}

class CEP {
  String? cep;
  String? logradouro;
  String? complemento;
  String? bairro;
  String? localidade;
  String? uf;
  String? ibge;
  String? gia;
  String? ddd;
  String? siafi;

  CEP(
      {this.cep,
      this.logradouro,
      this.complemento,
      this.bairro,
      this.localidade,
      this.uf,
      this.ibge,
      this.gia,
      this.ddd,
      this.siafi});

  CEP.fromJson(Map<String, dynamic> json)
      : this(
          cep: json['cep'],
          logradouro: json['logradouro'],
          complemento: json['complemento'],
          bairro: json['bairro'],
          localidade: json['localidade'],
          uf: json['uf'],
          ibge: json['ibge'],
          gia: json['gia'],
          ddd: json['ddd'],
          siafi: json['siafi'],
        );

  Map<String, dynamic> toJson() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ibge': ibge,
      'gia': gia,
      'ddd': ddd,
      'siafi': siafi,
    };
  }
}
