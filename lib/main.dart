import 'package:hashtag/pages/login.page.dart';
import 'package:flutter/material.dart';

class URLs {
  static const BASE_API_URL = "http://192.168.1.104/Hashtag.WebService";
}

//STARTUP
void main() => runApp(Hashtag());

class Hashtag extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hashtag Lanchonete',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: LoginPage(),
    );
  }
}
