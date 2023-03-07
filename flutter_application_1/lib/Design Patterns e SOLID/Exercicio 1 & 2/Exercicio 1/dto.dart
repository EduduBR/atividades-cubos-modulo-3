import 'package:flutter_application_1/Design%20Patterns%20e%20SOLID/Exercicio%201%20&%202/Exercicio%201/Order/i_order_code.dart';
import 'package:flutter_application_1/Design%20Patterns%20e%20SOLID/Exercicio%201%20&%202/Exercicio%201/Order/i_order_converter.dart';
import 'package:flutter_application_1/Design%20Patterns%20e%20SOLID/Exercicio%201%20&%202/Exercicio%201/Order/i_order_create_date.dart';
import 'package:flutter_application_1/Design%20Patterns%20e%20SOLID/Exercicio%201%20&%202/Exercicio%201/Order/i_order_currentvalue.dart';
import 'package:flutter_application_1/Design%20Patterns%20e%20SOLID/Exercicio%201%20&%202/Exercicio%201/Order/i_order_nameconverter.dart';
import 'package:flutter_application_1/Design%20Patterns%20e%20SOLID/Exercicio%201%20&%202/Exercicio%201/repository_dio.dart';
import 'package:flutter_application_1/Design%20Patterns%20e%20SOLID/Exercicio%201%20&%202/Exercicio%201/repository_http.dart';
import 'mapper.dart';



class Return
    implements
        IOrderCode,
        IOrderCurrent,
        IOrderName,
        IOrderConverter,
        IOrderDate {
  @override
  get code =>
      Mapper(RepositoryDio()).getitens().then((value) => value[0]['code']);

  @override
  get value =>
      Mapper(RepositoryDio()).getitens().then((value) => value[0]['ask']);

  @override
  get name =>
      Mapper(RepositoryDio()).getitens().then((value) => value[0]['codein']);

  @override
  get coin =>
      Mapper(RepositoryHttp()).getitens().then((value) => value[0]['coin']);

  @override
  get createdate => Mapper(RepositoryHttp())
      .getitens()
      .then((value) => value[0]['create_date']);
}
