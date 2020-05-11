import 'package:flutter/material.dart';
import 'package:masterquiz/Funcoes/dadosperguntas.dart';
import 'package:masterquiz/Funcoes/appBar.dart';
import 'package:masterquiz/Funcoes/alertaCerto.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:masterquiz/Funcoes/indexNavegacao.dart';

DadosPerguntas dadosPerguntas = DadosPerguntas();

class Navegacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextoPergunta();
  }
}

class TextoPergunta extends StatefulWidget {
  @override
  TextoPerguntaState createState() => TextoPerguntaState();
}

class TextoPerguntaState extends State<TextoPergunta> {
  List<String> indexPergunta = [];

  Future<void> alertaErrado1() async {
    return showDialog(
      context: context,
//      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ops, ainda não...'),
          content: SingleChildScrollView(
//            child: ListBody(
//              children: <Widget>[Text('Ops, ainda não...')],
//            ),
              ),
          actions: <Widget>[
            FlatButton(
              child: Text('Próxima'),
              onPressed: () {
                setState(() {
                  indexPergunta.add('a');
                });
                print(indexPergunta.length);
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Conteúdo'),
              onPressed: () {
                setState(() {});
                print(indexPergunta.length);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> alertaCerto() async {
    return showDialog(
      context: context,
//      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Aew!!!'),
          content: SingleChildScrollView(
//            child: ListBody(
//              children: <Widget>[Text('Ops, ainda não...')],
//            ),
              ),
          actions: <Widget>[
            FlatButton(
              child: Text('Próxima'),
              onPressed: () {
                setState(() {
                  indexPergunta.add('a');
                });
                print(indexPergunta.length);
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Conteúdo'),
              onPressed: () {
                setState(() {});
                print(indexPergunta.length);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barra(),
      body: Column(
        children: <Widget>[
          //Pergunta
          Expanded(
            flex: 6,
            child: Center(
              child: Text(
                dadosPerguntas.getPergunta(indexPergunta.length),
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          //Imagem
          Expanded(
            flex: 6,
            child: Image.asset(
              dadosPerguntas.getImage(indexPergunta.length),
            ),
          ),
          //Botão A
          FlatButton(
            onPressed: () {
              setState(() {
                dadosPerguntas.getResposta('A', indexPergunta.length) ==
                        dadosPerguntas.getRespostaCerta(indexPergunta.length)
                    ? alertaCerto()
                    : alertaErrado1();
              });

//              if (dadosPerguntas.getResposta('A') ==
//                  dadosPerguntas.getRespostaCerta()) {
//                print('certo');
//              } else {
//                alertaCerto(context: context);
//              }
            },
            color: Colors.blue,
            child: Text(
              dadosPerguntas.getResposta('A', indexPergunta.length),
            ),
          ),
          //Botão B
          FlatButton(
            onPressed: () {
              dadosPerguntas.getResposta('B', indexPergunta.length) ==
                      dadosPerguntas.getRespostaCerta(indexPergunta.length)
                  ? alertaCerto()
                  : alertaErrado1();
            },
            color: Colors.blue,
            child: Text(
              dadosPerguntas.getResposta('B', indexPergunta.length),
            ),
          ),
          //Botão C
          FlatButton(
            onPressed: () {
              dadosPerguntas.getResposta('C', indexPergunta.length) ==
                      dadosPerguntas.getRespostaCerta(indexPergunta.length)
                  ? alertaCerto()
                  : alertaErrado1();
            },
            color: Colors.blue,
            child: Text(
              dadosPerguntas.getResposta('C', indexPergunta.length),
            ),
          ),
          //Botão D
          FlatButton(
            onPressed: () {
              dadosPerguntas.getResposta('D', indexPergunta.length) ==
                      dadosPerguntas.getRespostaCerta(indexPergunta.length)
                  ? alertaCerto()
                  : alertaErrado1();
            },
            color: Colors.blue,
            child: Text(
              dadosPerguntas.getResposta('D', indexPergunta.length),
            ),
          )
        ],
      ),
    );
  }
}
