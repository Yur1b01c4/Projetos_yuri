// import 'dart:collection';

// void main() {

//   // String nome = 'laranja';
//   // double peso = 100.2;
//   // String cor = 'Verde e amarela';
//   // String sabor = 'Doce citrica';
//   // int diasDesdeColheita = 1;
//   // bool isMadura;

//   // verMadura(nome: 'Melancia', cor: 'vermelho brilhando', sabor: 'Doce como mel', diasDesdeColheta: 90);
//   // int quantosDias = funcDiasMadura(diasDesdeColheita);
//   // print (quantosDias);

//   Fruta fruta01 = Fruta('Mamao', 300, 'amarelo', 'Doce', 20);
//   //print(fruta01.peso);

//   //fruta01.estaMadura(90);

//   Nozes Macadamia = Nozes('macadamia', 2, 'branco amarelado', 'doce', 20, 35);
//   FrutaCitricas limao = FrutaCitricas('limao', 100, 'verde', 'azedo', 5, 9);
//   Fruta Banana = Fruta('banana', 75, 'amarela', 'doce', 12);
//   Legumes Mandioca = Legumes('macaxeira', 1200, 'marrom', true);

//   // Macadamia.printComida();
//   // limao.printComida();
//   // Banana.printComida();
//   Mandioca.fazerMassa();


// }

// class Fruta extends Comida implements Bolo{
//   String sabor;
//   int diasDesdeColheita;
//   bool? isMadura;

//   Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita, {this.isMadura}):super(nome, peso, cor);

//   void estaMadura(int diasParaMadura){
//     isMadura = diasDesdeColheita >= diasParaMadura;
//     print('$nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer, ela é $isMadura.');
//   }

//   void fazerSuco(){
//     print('Você fez um otimo suco de $nome');
//   }
//   @override
//   void separarIngredientes(){
//      print('Descascar a $nome e cortar em pedaços pequenos');

//   }
//   @override
//   void fazerMassa(){
//     print('Misturar o(a) $nome com a massa, leite, farinha e ovos.');

//   }
//   @override
//   void assar(){
//     print('por no forno por tantos minutos');
//   }
// }


// class Comida{
//   String nome;
//   double peso;
//   String cor;

//   Comida(this.nome, this.peso, this.cor);

//   void printComida(){
//     print('Este(a) $nome pesa $peso gramas e é $cor');
//   }
// }


// class Legumes extends Comida implements Bolo{
//   bool isPossoCozinhar;

//   Legumes(String nome, double peso, String cor, this.isPossoCozinhar) : super(nome, peso, cor);

//   void cozinhar(){
//     if(isPossoCozinhar){
//       print('Pronto, o $nome está cozinhando');
//     }else{
//       print('Nem precisa cozinhar');
//     }
//   }
//   @override
//   void assar(){
//     print('por no forno por tantos minutos');
//   }
//   @override
//   void fazerMassa(){
//     print('Misturar o(a) $nome com a massa, leite, farinha e ovos.');

//   }
//   @override
//   void separarIngredientes(){
//     print('Descascar a $nome e cortar em pedaços pequenos');
//   }

// }


// class FrutaCitricas extends Fruta{
//   double nivelAzedo;

//   FrutaCitricas(String nome, double peso, String cor, String sabor, int diasDesdeColheita, this.nivelAzedo):super(nome, peso, cor, sabor, diasDesdeColheita);

//   void existeRefri(bool existe){
//     if(existe){
//       print('Existe refri de $nome');
//     }else{
//       print('Não existe refri de $nome');
//     }
//   }
// }


// class Nozes extends Fruta{
//   double porcentagemOleoNatural;

//   Nozes(String nome, double peso, String cor, String sabor, int diasDeColheita, this.porcentagemOleoNatural):super(nome, peso, cor, sabor, diasDeColheita);

//   @override
//   void fazerMassa(){
//     print('Tirar a casca');
//       super.fazerMassa();
//   }

// }

// abstract class Bolo{
//   void separarIngredientes();

//   void fazerMassa();

//   void assar();
// }

// funcDiasMadura(int dias){
//   int diasParaMadura = 30;
//   int quantosDiasFaltam = diasParaMadura - dias;
//   return quantosDiasFaltam;
//   //int quantosDiasFaltam = diasDesdeColheita - diaParaMadura;
// }

// void verMadura({required String nome, required int diasDesdeColheta, required String cor, required String sabor}){

//   if (diasDesdeColheta >= 14){
//     print('A $nome, da cor $cor está madura e $sabor');
//   }
//   else{
//     print('A $nome, da cor $cor não está madura e $sabor');
//   }
// }
