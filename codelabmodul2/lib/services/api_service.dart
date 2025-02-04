// File ini berisi logika untuk mengambil data dari API menggunakan http-package.
import 'dart:convert';
import 'package:http/http.dart' as http;
// API yang digunakan
class ApiService {
  final String url = 'https://my-json-server.typicode.com/Fallid/codelab-api/db';

  Future<Map<String, dynamic>> fetchData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
