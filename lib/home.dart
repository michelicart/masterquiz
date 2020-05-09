import 'package:flutter/material.dart';
import 'Funcoes/addimgtxt.dart';
import 'package:masterquiz/Funcoes/addimgtxt.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Topicos();
  }
}

class Topicos extends StatefulWidget {
  @override
  _TopicosState createState() => _TopicosState();
}

AddImgTxt addImgTxt = AddImgTxt();

class _TopicosState extends State<Topicos> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Master o Mestre'),
          actions: <Widget>[
            IconButton(
              //TODO: pesquisar raised button
              icon: Icon(Icons.volume_up),
              onPressed: () {
                setState(() {
                  IconButton(
                    icon: Icon(Icons.volume_mute),
                  );
                });
              },
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            //Topico
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('Tópicos')],
            ),
            //Linha 1
            // AddImgTxt(img: 'teste', txt: 'Navegação', onpr: '').addImgTxt(),
            addImgTxt.add(
                context: context,
                img: 'teste',
                txt: 'Navegação',
                onpr: '/navegacao'),
            //Linha 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                addImgTxt.add(
                    context: context,
                    img: 'teste',
                    txt: 'Balizamento',
                    onpr: '/balizamento'),
                addImgTxt.add(
                    context: context,
                    img: 'teste',
                    txt: 'Cartas',
                    onpr: '/cartas'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
