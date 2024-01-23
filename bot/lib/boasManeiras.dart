class Educacao{
  String question;
  bool issoFoiEducado = false;
  String kakoBot = 'KK: ';
  Educacao(this.question);

  bool isEducado(){
    if(question.contains('oii') ||
      question.contains('tudo bom?') ||
      question.contains('obg') ||
      question.contains('eae') ||
      question.contains('vlw') ||
      question.contains('bom dia') ||
      question.contains('boa tarde') ||
      question.contains('boa noite')){
        issoFoiEducado = true;
      }
      return issoFoiEducado;
  }

  educacao(){
    if(question.contains('bom dia')){
      print(kakoBot + 'Boom diiaa');
    }else if(question.contains('boa tarde')){
      print(kakoBot + 'Boa tarde amigão');
    }else if(question.contains('boa noite')){
      print(kakoBot + 'boa noite');
    }else if(question.contains('vlw')){
      print(kakoBot + 'Que isso, Tmjt mano');
    }else if(question.contains('eae')){
      print(kakoBot + 'eae mano, tranquilo?');
    }else if(question.contains('obg')){
      print(kakoBot + 'De nada');
    }else if(question.contains('oii')){
      print(kakoBot + 'oiiii, tudo bom??');
    }
  }
}