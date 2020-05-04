import 'package:flutter/material.dart';

class AddImgTxt {
  String img;
  String txt;
  String onpr;

  //construtor
  AddImgTxt({this.img, this.txt, this.onpr});

//metodo
  addImgTxt() {
    return Column(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            //Evolução
            CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 48,
            ),
            //Botão do tópico
            SizedBox(
              width: 80,
              height: 80,
              child: FloatingActionButton(
                child: CircleAvatar(
                  backgroundImage: AssetImage('img/$img.jpg'),
                  radius: 40,
                ),
                onPressed: () {
                  print('apertou');
                },
              ),
            ),
          ],
        ),
        Text('$txt'),
      ],
    );
  }
}
