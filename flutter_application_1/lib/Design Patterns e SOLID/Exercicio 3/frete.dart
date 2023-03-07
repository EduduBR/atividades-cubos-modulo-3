import 'package:flutter_application_1/Design%20Patterns%20e%20SOLID/Exercicio%203/cidades.dart';
import 'package:flutter_application_1/Design%20Patterns%20e%20SOLID/Exercicio%203/compra.dart';


class Frete implements Compra{
  @override
  Cidades get cidade => Cidades.salvador;

  @override
  int get codigoProduto => 1;

  @override
  double get valor => 5300.0;


}





