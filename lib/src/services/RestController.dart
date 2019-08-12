import 'package:http/http.dart' as http;
import 'package:hashtag/src/models/Acesso.dart';
import 'dart:convert';
import '../../main.dart';

class RestController {
  static Future<Acesso> authentication(String login, String password) async {
      
      Map<String, String> bodyHttpRequest = {
        'Login': login,
        'Senha': password
      };

      final _response = await http.post('${URLs.BASE_API_URL}/Acesso/Login', body: bodyHttpRequest);

      if(_response.statusCode == 200) {
        
          return  Acesso.fromJson(json.decode(_response.body));
      }
      else {return null;}
  }
}