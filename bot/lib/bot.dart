import 'tempo_kk.dart';

import 'dart:io';

import 'perguntas_bot.dart';

import 'boasManeiras.dart';

 DateTime date = DateTime.now();
void main() async {
  
  String kakoBot = 'KK: ';
  var a = true;

  var myStream = TempoKK().kkStream(1, 60);
  var subscriber = myStream.listen((event) {
    print('                       KKbot foi está ativo a $event segundos');
  }, onDone: (){
    a = false;
    print('KKbot está voltando ao seu sono, até mais.');
  });
  print(kakoBot + '...');
  await TempoKK().tempo(2);
  print(kakoBot + 'Bem vindo! Eu sou o KKbot, sou um recem nascido, então não sei responder muitas perguntas ou conversar com você.');
  print(kakoBot + 'Sei responder algumas perguntas, como: \n que dia é hoje| \n em que ano estamos| \n que horas são|');
  print(kakoBot + 'Para iniciar a conversa é só digitar algo em seu teclado ;)');

  String teclado = '';
  teclado = stdin.readLineSync().toString();
  String usuario = teclado;

  List frasesAbertura = ["KK: $usuario", "KK: Oii :)", "KK: Eae, tranquilo?", "KK: Fala tu menor", "KK: To acordando...", "KK: Fala chefe, o que deseja??", "KK: O que quieres manito?", "KK: '$usuario' as ${date.hour}:${date.minute} cara? fala o que você quer"];
  List indices = List.generate(frasesAbertura.length, (i) => i);
  indices.shuffle();
  int quantidadeDeAberturas = 1;
  List fraseAberutaAleatoria = indices.take(quantidadeDeAberturas).map((i) => frasesAbertura[i]).toList();
  print(fraseAberutaAleatoria.join(""));

  List frasesEncerramentos = ["flw mano.", "Já vai? poxa, vlw então.", "Tchauu, até mais tarde.", "Vou voltar a dormir..."];
  List indice = List.generate(frasesEncerramentos.length, (i) => i);
  indice.shuffle();
  int quantidadeDeEncerramentos = 1;
  List fraseEncerramentoAleatoria = indice.take(quantidadeDeEncerramentos).map((i) => frasesEncerramentos[i]).toList();

  do {
    usuario = stdin.readLineSync().toString();
    await TempoKK().tempo(1);
    if (usuario.contains('obg')){
      print(kakoBot + 'De nada! você ja quer encerrar nossa conversa?');
      String answer = stdin.readLineSync().toString();
    if(answer.contains('sim') || answer.contains('ss')){
      a = false;
      print(kakoBot + fraseEncerramentoAleatoria.join(""));
    }else if(answer.contains('nao') || answer.contains('n')){
      print(kakoBot + 'Que bom, me faça mais perguntas');
    }
      }
    else if (usuario.contains('vlw') ||
      usuario.contains('flw')) {
      a = false;
      print(kakoBot + fraseEncerramentoAleatoria.join(""));
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
      await TempoKK().tempo(2);
    } else if (Educacao(usuario).isEducado()) {
        Educacao(usuario).educacao();
    }
    else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await TempoKK().tempo(2);
      print(kakoBot +
          'Eu sou uma maquina cara, meu programador preguiçoso não me ensinou a responder o seu $usuario');
      print(kakoBot + 'faz uma pergunta mais facil ai kkkk ou deixa eu voltar a dormir...');
    }
  } while (a);

  print('-Encerrando KKbot-');
}
