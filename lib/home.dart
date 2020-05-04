import 'package:flutter/material.dart';
import 'package:masterquiz/Funcoes/botaoTopico.dart';

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

class _TopicosState extends State<Topicos> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
            botaoTopico(img: 'teste', txt: 'Navegação'),
            //Linha 2
            Row(
              children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.center,
                  fit: StackFit.loose,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 45,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 40,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
