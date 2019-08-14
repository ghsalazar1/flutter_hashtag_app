import 'package:hashtag/src/models/InternalResponse.dart';

class Acesso extends InternalResponse {

  final String nome;
  final String login;
  final String senha;
  final String nivelAcesso;
  final String dataInclusao;
  final bool status;

  Acesso(this.nome, this.login, this.senha, this.nivelAcesso, this.dataInclusao, this.status, message, internalstatus) : super(message, internalstatus, null, null);

  factory Acesso.fromJson(Map<String, dynamic> json){
    
    int _internalstatus = json['InternalStatus'];

    if(_internalstatus == 200){
      return Acesso(
          json['Data']['Nome'],
          json['Data']['Login'],
          json['Data']['Senha'],
          json['Data']['SivelAcesso'],
          json['Data']['DataInclusao'],
          json['Data']['Status'],
          json['Message'],
          _internalstatus
      );
    }
    else{
      return Acesso(null, null, null, null, null, null, json['Message'], _internalstatus);
    }
  } 

}