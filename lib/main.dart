import 'package:flutter/material.dart';
import 'home.dart';
import 'pergunta.dart';
import 'conteudo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: 'home', routes: {
      'home': (context) => Home(),
      'pergunta': (context) => Pergunta(),
      'conteudo': (context) => Conteudo(),
    });
  }
}
