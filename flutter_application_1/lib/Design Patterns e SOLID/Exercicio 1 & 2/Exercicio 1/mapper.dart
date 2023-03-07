import 'dart:convert';

class Mapper {
  final repo;

  Mapper(this.repo);

  Future<List> getitens() async {
    final data = await repo.getInfo();
    return await json.decode(data);
  }
}


