import 'package:hashtag/models/InternalResponse.dart';

class Acesso extends InternalResponse {

  final String Nome;
  final String Login;
  final String Senha;
  final String NivelAcesso;
  final String DataInclusao;
  final bool Status;

  Acesso(this.Nome, this.Login, this.Senha, this.NivelAcesso, this.DataInclusao, this.Status, message, internalstatus) : super(message, internalstatus, null, null);

  factory Acesso.fromJson(Map<String, dynamic> json){
    
    int _internalStatus = json['InternalStatus'];

    if(_internalStatus == 200){
      return Acesso(
          json['Data']['Nome'],
          json['Data']['Login'],
          json['Data']['Senha'],
          json['Data']['NivelAcesso'],
          json['Data']['DataInclusao'],
          json['Data']['Status'],
          json['Message'],
          json['InternalStatus']
      );
    }
    else{
      return Acesso(null, null, null, null, null, null, json['Message'], json['InternalStatus']);
    }
  } 

}