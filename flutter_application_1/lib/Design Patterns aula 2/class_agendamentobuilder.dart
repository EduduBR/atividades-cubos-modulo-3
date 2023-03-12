import 'package:flutter_application_1/Design%20Patterns%20aula%202/agendamento.dart';
import 'package:flutter_application_1/Design%20Patterns%20aula%202/servicos.dart';
import 'package:flutter_application_1/Design%20Patterns%20aula%202/barbeiros.dart';

class AgendamentoBuilder implements Agendamento {
  @override
  Barbeiros get barbeiro => Barbeiros.semPreferencia;

  @override
  DateTime get dataHora => DateTime.now();

  @override
  String get nomeCliente => 'Eduardo';

  @override
  List<Servicos> get servicos => [Servicos.barba, Servicos.corteDegrade];

  @override
  String? get telefone => null;

  String fone() {
    if (telefone == null) {
      return '';
    } else {
      return telefone!;
    }
  }

  String buildAgendamento() {
    return '''
    Cliente: $nomeCliente
    Data: $dataHora
    Barbeiro: $barbeiro
    Fone: ${fone()}
    Extra: $servicos''';
  }
}
