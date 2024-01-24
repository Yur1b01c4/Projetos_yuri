class SenderIdInvalidExeption implements Exception{
  static const String report = "SenderIdInvalidExeption";
  String idSender;
  SenderIdInvalidExeption({required this.idSender});


  @override
  String toString(){
    return '$report\n ID Sender: $idSender';
  }

}

class ReceiverIdInvaldExeption implements Exception{
  static const String report = "ReceiverIdInvaldExeption";
  String idReciver;
  ReceiverIdInvaldExeption({required this.idReciver});
  

  @override
  String toString(){
    return '$report\n ID Reciver: $idReciver';
  }
}

class SenderNotAuthenticatedExeption implements Exception{
  static const String report = "SenderNotAuthenticatedExeption";
  String idSender;
  SenderNotAuthenticatedExeption({required this.idSender});


  @override
  String toString(){
    return '$report\n ID Sender: $idSender';
  }
}

class SenderBalenceLowerThanAmountExeption implements Exception{
  static const String report = "SenderBalenceLowerThanAmountExeption";
  String idSender;
  double senderBalance;
  double amount;
  SenderBalenceLowerThanAmountExeption({required this.idSender, required this.senderBalance, required this.amount});


  @override
  String toString(){
    return '$report\n ID idSender: $idSender\n$report\n ID senderBalance: $senderBalance\n$report\n ID amount: $amount';
  }
}