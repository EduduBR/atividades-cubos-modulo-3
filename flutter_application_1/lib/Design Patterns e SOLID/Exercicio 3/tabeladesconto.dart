import 'package:flutter_application_1/Design%20Patterns%20e%20SOLID/Exercicio%203/calculadora_de_precos.dart';
import 'frete.dart';

class Tabela {
  final _calculadora = CalculadoraDePrecos();
  double get desconto => _calculadora.calcula(Frete());

}
