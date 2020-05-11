import 'package:masterquiz/navegacao.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';
import 'dadosperguntas.dart';
import 'package:masterquiz/Funcoes/indexNavegacao.dart';

alertaErrado({BuildContext context}) {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

//alertaErrado({BuildContext context}) {
////  var novoIndex = TextoPerguntaState().indexpergunta;
//
//  return Alert(
//    context: context,
//    type: AlertType.warning,
//    title: "Ops, ainda não...",
//    //desc: "Flutter is more awesome with RFlutter Alert.",
//    buttons: [
//      DialogButton(
//        child: Text(
//          "Próxima",
//          style: TextStyle(color: Colors.white, fontSize: 20),
//        ),
//        onPressed: () {
//          Index().indexPergunta.add('a');
////          Navigator.pop(context);
//          print(Index().indexPergunta.length);
//        },
//        color: Color.fromRGBO(0, 179, 134, 1.0),
//      ),
//      DialogButton(
//        child: Text(
//          "Conteúdo",
//          style: TextStyle(color: Colors.white, fontSize: 20),
//        ),
//        onPressed: () => Navigator.pop(context),
//        gradient: LinearGradient(colors: [
//          Color.fromRGBO(116, 116, 191, 1.0),
//          Color.fromRGBO(52, 138, 199, 1.0)
//        ]),
//      )
//    ],
//  ).show();
//}
