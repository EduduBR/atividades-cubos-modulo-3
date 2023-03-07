
import 'package:http/http.dart' as http;

class RepositoryHttp {
  Future<String> getInfo() async {
    final url =
        Uri.parse('https://economia.awesomeapi.com.br/json/daily/BRL-JPY/1');

    final repository = await http.get(url);
  
    return repository.body;
  }
}
