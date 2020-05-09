import 'package:flutter/material.dart';
import 'home.dart';
import 'pergunta.dart';
import 'conteudo.dart';
import 'navegacao.dart';
import 'cartas.dart';
import 'balizamento.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: 'home', routes: {
      'home': (context) => Home(),
      '/navegacao': (context) => Navegacao(),
      '/cartas': (context) => Cartas(),
      '/balizamento': (context) => Balizamento(),
      '/conteudo': (context) => Conteudo(),
    });
  }
}
