import 'construtor_pergunta.dart';

class DadosPerguntas {
  List<Criapergunta> simbologia = [
    Criapergunta(
      pergunta:
          'O símbolo náutico, da carta anexa, na LAT = 22º55\'S e LONG = 043º 10\'W, significa:',
      respostaA: 'Uma baliza cega',
      respostaB: 'Um radiofarol',
      respostaC: 'Um farol sem guarnição',
      respostaD: 'Uma boia luminosa',
      respostaCerta: 'Um radiofarol',
    ),
  ];

  int numeroSimbologia = 0;

  String getPergunta() {
    return simbologia[numeroSimbologia].pergunta;
  }
}
