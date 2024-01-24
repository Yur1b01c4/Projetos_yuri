import 'dart:io';

Start(){
  functionMain();
}

void functionMain(){
  print('Function main');
  functionOne();
  print('Function main is finished');
}

void functionOne(){
  print('Function One');
  try {
    functionTwo();  
  }on HttpException catch (e, s){
    print(e);
    print(s);
  }finally{
    print('chegou no finally');
  }
  print('Function Two is finished');
}

void functionTwo(){
  print('Function Two');
  for( int i = 1; i <= 5; i++){
    print(i);
  }
  double sim = double.parse('22');
  print('Function Two is finished');
}