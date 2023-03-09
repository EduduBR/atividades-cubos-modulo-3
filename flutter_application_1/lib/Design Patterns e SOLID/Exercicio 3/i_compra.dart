import 'cidades.dart';

abstract class Compra {
  final int codigoProduto;
  final double valor;
  final Cidades cidade;

  Compra({
    required this.codigoProduto,
    required this.valor,
    required this.cidade,
  });
}