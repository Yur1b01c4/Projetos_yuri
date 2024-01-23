// import 'controllers/bank_controller.dart';
// import 'models/account.dart';

// void main() {
//   // Criando o banco
//   BankController bankController = BankController();

//   // Adicionando contas
//   bankController.addAccount(
//       id: "Ricarth",
//       account:
//           Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

//   bankController.addAccount(
//       id: "Kako",
//       account:
//           Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

//   // Fazendo transferência
//   bool result = bankController.makeTransfer(
//       idSender: "Kako", idReceiver: "Ricarth", amount: 700);

//   // Observando resultado
//   print(result);
// }

main(){
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
  } on FormatException catch(e){
    print('Exeption Capturada');
    print(e.message);
    print(e.source);
    print(e.toString());
  }
  print('Function One is finished');
}

void functionTwo(){
  print('Function Two');
  for( int i = 1; i <= 5; i++){
    print(i);
  }
  double sim = double.parse('okokok');
  print('Function Two is finished');
}