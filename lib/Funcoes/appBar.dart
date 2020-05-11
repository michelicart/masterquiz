import 'package:flutter/material.dart';

barra() {
  return AppBar(
    title: Text('Master o Mestre'),
    actions: <Widget>[
      IconButton(
        //TODO: pesquisar raised button
        icon: Icon(Icons.volume_up),
        onPressed: () {
//            setState(() {
//              IconButton(
//                icon: Icon(Icons.volume_mute),
//              );
//            });
        },
      ),
    ],
  );
}
