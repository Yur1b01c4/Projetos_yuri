import 'dart:io';


//implementar o Timing!

class TimeQuestions{
  String hour = 'que horas sao?';
  String day = 'que dia e hoje?';
  String year = 'em que ano estamos?';
  String question;
  DateTime date = DateTime.now();
  String kakoBot = 'KKbot: ';
  bool isThisATimeQuestion = false;

  TimeQuestions(this.question);

  bool isThisTime(){
    //verificar se estamos numa pergunta sobre Tempo
    if (question.contains('horas') ||
        question.contains('dia') ||
        question.contains('ano')){
      isThisATimeQuestion = true;
    }
    return isThisATimeQuestion;
  }

  timeQuestion() {

  String teclado = question;
  String usuario = teclado;

  List respostas = ["Não vou te responder '$usuario'... Brincadeira, ", "Pra que você quer saber $usuario? bom... "];
  List indices = List.generate(respostas.length, (i) => i);
  indices.shuffle();
  int quantidadeDeRespostas = 1;
  List respostaAleatoria = indices.take(quantidadeDeRespostas).map((i) => respostas[i]).toList();

    if (question == hour) {

      String _botAnswer = kakoBot + respostaAleatoria.join("") + 'são ${date.hour} horas e ${date.minute} minutos';
      print(_botAnswer);
    } else if (question == day) {

      String _botAnswer = kakoBot + respostaAleatoria.join("") + 'hoje é dia ${date.day} do ${date.month}';
      print(_botAnswer);
    } else if (question == year) {

      String _botAnswer = kakoBot + respostaAleatoria.join("") + 'estamos em ${date.year}';
      print(_botAnswer);
    } else {
      unsure();
    }
  }

  unsure() {
    if (question.contains('horas') || question.contains('Horas')) {

    String teclado = question;
    String usuario = teclado;

    List respostasCasoEuNaoEntenda = ["Seja mais claro na proxima, eu sou meio lerdo...rs, ", "Desculpa, estou com uns parafusos a menos hoje, ", "Não esqueça que eu não entendo tudo que você me fala, ", "Meu hd ta meio lento hoje"];
    List indices = List.generate(respostasCasoEuNaoEntenda.length, (i) => i);
    indices.shuffle();
    int quantidadeDeRespostas = 1;
    List respostaAleatoria = indices.take(quantidadeDeRespostas).map((i) => respostasCasoEuNaoEntenda[i]).toList();

    List respostasPergunta = ["Não vou te responder '$usuario'... Brincadeira, ", "Pra que você quer saber $usuario?? bom... "];
    List indice = List.generate(respostasPergunta.length, (i) => i);
    indices.shuffle();
    int quantidadeDeResposta = 1;
    List respostasAleatoria = indice.take(quantidadeDeResposta).map((i) => respostasPergunta[i]).toList();

      String _botQuestion =
          kakoBot + respostaAleatoria.join("") + 'você quer saber $usuario?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim') || answer.contains('isso') || answer.contains('Isso') || answer.contains('é') || answer.contains('É')) {

        String _botAnswer = kakoBot + respostasAleatoria.join("") + 'são ${date.hour} horas e ${date.minute} minutos.';
        print(_botAnswer);
      } else {

        String _botAnswer = kakoBot + respostaAleatoria.join("");
        print(_botAnswer);
      }
    } else if (question.contains('dia') || question.contains('Dia')) {

      String teclado = question;
      String usuario = teclado;

      List respostasCasoEuNaoEntenda = ["Seja mais claro na proxima, eu sou meio lerdo...rs", "Desculpa, estou com uns parafusos a menos hoje", "Não esqueça que eu não entendo tudo que você me fala", "Meu hd ta meio lento hoje"];
      List indices = List.generate(respostasCasoEuNaoEntenda.length, (i) => i);
      indices.shuffle();
      int quantidadeDeRespostas = 1;
      List respostaAleatoria = indices.take(quantidadeDeRespostas).map((i) => respostasCasoEuNaoEntenda[i]).toList();

      List respostasPergunta = ["Não vou te responder '$usuario'... Brincadeira, ", "Pra que você quer saber $usuario? bom... "];
      List indice = List.generate(respostasPergunta.length, (i) => i);
      indices.shuffle();
      int quantidadeDeResposta = 1;
      List respostasAleatoria = indice.take(quantidadeDeResposta).map((i) => respostasPergunta[i]).toList();

      String _botQuestion =
          kakoBot + respostaAleatoria.join("") + ', você quer saber que $usuario?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim') || answer.contains('isso') || answer.contains('Isso') || answer.contains('é') || answer.contains('É')) {

        String _botAnswer = kakoBot + respostasAleatoria.join("") + ' hoje é ${date.day} do ${date.month}';
        print(_botAnswer);
      } else {

        String _botAnswer = kakoBot + respostaAleatoria.join("");
        print(_botAnswer);
      }
    } else if (question.contains('ano') || question.contains('Ano')) {

      String teclado = question;
      String usuario = teclado;

      List respostasCasoEuNaoEntenda = ["Seja mais claro na proxima, eu sou meio lerdo...rs", "Desculpa, estou com uns parafusos a menos hoje", "Não esqueça que eu não entendo tudo que você me fala", "Meu hd ta meio lento hoje"];
      List indices = List.generate(respostasCasoEuNaoEntenda.length, (i) => i);
      indices.shuffle();
      int quantidadeDeRespostas = 1;
      List respostaAleatoria = indices.take(quantidadeDeRespostas).map((i) => respostasCasoEuNaoEntenda[i]).toList();
      List respostasPergunta = ["Não vou te responder '$usuario'... Brincadeira, ", "Pra que você quer saber $usuario? bom... "];
      List indice = List.generate(respostasPergunta.length, (i) => i);
      indices.shuffle();
      int quantidadeDeResposta = 1;
      List respostasAleatoria = indice.take(quantidadeDeResposta).map((i) => respostasPergunta[i]).toList();

      String _botQuestion =
          kakoBot + respostaAleatoria.join("") + ', você quer saber $usuario?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim') || answer.contains('isso') || answer.contains('Isso') || answer.contains('é') || answer.contains('É')) {

        String _botAnswer = kakoBot + respostasAleatoria.join("") + ', estamos em ${date.year}, você por acaso é um viajante do tempo para não saber em que ano estamos??';
        print(_botAnswer);
      } else {

        String _botAnswer = kakoBot + respostaAleatoria.join("");
        print(_botAnswer);
      }
    }
  }
}
