import 'package:flutter/material.dart';

class Botaotopico {
  //definir propriedades
  String img;
  String txt;
  String onpr;

  //criar um construtor
  Botaotopico({this.img, this.onpr, this.txt});
}

//class botaoTopico {
//
//
//  addimgtxt({this.img, this.txt, this.onpr});
//
//  botaoTopico(){
//    return Container(
//      child: Column(
//        children: <Widget>[
//          Stack(
//            alignment: AlignmentDirectional.center,
//            children: <Widget>[
//              //Evolução
//              CircleAvatar(
//                backgroundColor: Colors.teal,
//                radius: 48,
//              ),
//              //Botão do tópico
//              SizedBox(
//                width: 80,
//                height: 80,
//                child: FloatingActionButton(
//                  child: CircleAvatar(
//                    backgroundImage: AssetImage('img/$img.jpg'),
//                    radius: 40,
//                  ),
//                  onPressed: () {
//                    print('apertou');
//                  },
//                ),
//              ),
//            ],
//          ),
//          Text($txt),
//        ],
//      ),
//    );
//  }
//}
