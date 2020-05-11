import 'construtor_pergunta.dart';

class DadosPerguntas {
  List<Criapergunta> navegacao = [
    Criapergunta(
        pergunta:
            'O símbolo náutico, da carta anexa, na LAT = 22º55\'S e LONG = 043º 10\'W, significa:',
        respostaA: 'Uma baliza cega',
        respostaB: 'Um radiofarol',
        respostaC: 'Um farol sem guarnição',
        respostaD: 'Uma boia luminosa',
        respostaCerta: 'Um radiofarol',
        img: 'img/carta.jpg'),
    Criapergunta(
        pergunta:
            'Ângulo ou arco de meridiano, formado no centro da terra, a partir do equador até o paralelo do lugar, variando de 00º a 90º, Norte ou Sul:',
        respostaA: 'Longitude',
        respostaB: 'Apartamento',
        respostaC: 'Latitude',
        respostaD: 'Rumo',
        respostaCerta: 'Latitude',
        img: 'img/carta.jpg')
  ];

//  int numeroNavegacao = 0;
// i = numeroNavegacao

  String getPergunta(int i) {
    return navegacao[i].pergunta;
  }

  String getResposta(String x, int i) {
    if (x == 'A') {
      return navegacao[i].respostaA;
    } else if (x == 'B') {
      return navegacao[i].respostaB;
    } else if (x == 'C') {
      return navegacao[i].respostaC;
    } else if (x == 'D') {
      return navegacao[i].respostaD;
    } else {
      return 'valor incorreto';
    }
  }

  String getRespostaCerta(int i) {
    return navegacao[i].respostaCerta;
  }

  String getImage(int i) {
    return navegacao[i].img;
  }
}
