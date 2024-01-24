import 'dart:io';
import 'package:bot_alura/controllers/exeption_banco.dart';

import 'controllers/banco.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
try{
  bool result = bankController.makeTransfer(
      idSender: "Kako", idReceiver: "Ricarth", amount: 1269);

if(result){
  print('transação feita');

}
} on SenderIdInvalidExeption catch(e){
  print(e);
  print('O id ${e.idSender}, do remetente não é um id valido');
}on ReceiverIdInvaldExeption catch(e){
  print(e);
  print('O id ${e.idReciver}, do destinatario não é um id valido');
}on SenderNotAuthenticatedExeption catch(e){
  print(e);
  print('O usuario do id ${e.idSender}, é invalido');
}on SenderBalenceLowerThanAmountExeption catch(e){
  print(e);
  print('O usuario de id ${e.idSender}, tentou enviar ${e.amount} sendo que ele é pobre e só tem ${e.senderBalance}');
}on Exception{
  print('Algo deu errado ;(');
}
  // Observando resultado
}