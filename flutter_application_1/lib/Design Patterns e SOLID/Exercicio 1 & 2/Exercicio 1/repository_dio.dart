import 'dart:convert';
import 'package:dio/dio.dart';

class RepositoryDio {
  Future<String> getInfo() async {
    final dio = Dio();

    final repository = await dio
        .get('https://economia.awesomeapi.com.br/json/daily/BRL-JPY/1');

    return jsonEncode(repository.data[0]);
  }
}
