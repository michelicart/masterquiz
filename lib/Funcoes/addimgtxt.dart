import 'package:flutter/material.dart';

class AddImgTxt {
  String img;
  String txt;
  String onpr;

  //construtor
//  AddImgTxt({this.img, this.txt, this.onpr});

//metodo
  add({
    BuildContext context,
    String img,
    String txt,
    String onpr,
  }) {
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
              child: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: AssetImage('img/$img.jpg'),
                  radius: 40,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '$onpr');
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
