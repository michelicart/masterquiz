import 'package:flutter/material.dart';
import 'package:masterquiz/Funcoes/dadosperguntas.dart';

DadosPerguntas dadosPerguntas = DadosPerguntas();

class Cartas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextoPergunta();
  }
}

class TextoPergunta extends StatefulWidget {
  @override
  _TextoPerguntaState createState() => _TextoPerguntaState();
}

class _TextoPerguntaState extends State<TextoPergunta> {
  @override
  Widget build(BuildContext context) {
    return Text(dadosPerguntas.getPergunta());
  }
}
