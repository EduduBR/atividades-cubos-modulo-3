import 'barbeiros.dart';
import 'servicos.dart';

class Agendamento {
  final String nomeCliente;
  final String? telefone;
  final Barbeiros barbeiro;
  final List<Servicos> servicos;
  final DateTime dataHora;

  Agendamento({
    required this.nomeCliente,
    this.telefone,
    required this.barbeiro,
    required this.servicos,
    required this.dataHora,
  });
}